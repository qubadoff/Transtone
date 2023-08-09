<?php

namespace App\Http\Controllers;

use App\Car;
use App\ContactMessage;
use App\Gallery;
use App\IndexTextInfo;
use App\Reservation;
use App\Sector;
use App\Service;
use App\Subscribe;
use App\Technique;
use App\TechniqueCategory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\View\View;
use TCG\Voyager\Models\Page;
use TCG\Voyager\Models\Post;
use function PHPUnit\Framework\isNull;

class GeneralController extends Controller
{
    public function index(): View
    {
        $cars = Car::paginate(12);
        $services = Service::paginate(12);
        $infotext = IndexTextInfo::paginate(4);

        return \view('Frontend.index', compact('cars', 'services', 'infotext'));
    }

    public function contact(): View
    {
        return \view('Frontend.contact');
    }

    public function sendMessage(Request $request)
    {
        $validation = Validator::make($request->all(), [
            'name' => 'required|max:50',
            'surname' => 'required|max:50',
            'email' => 'required|email|max:50',
            'phone' => 'required|max:30',
            'message' => 'required|min:20|max:2000'
        ],[
            'name.required' => 'Name is required !',
            'name.max' => 'Name Max symbol 50 !',
            'surname.required' => 'Surname is required !',
            'surname.maz' => 'Surname Max 50 symbol !',
            'email.required' => 'Email is Required !',
            'email.email' => 'Email type is invalid !',
            'email.max' => 'Email Max 50 symbol !',
            'phone.required' => 'Phone number is required !',
            'phone.max' => 'Phone max 30 symbol !',
            'message.required' => 'Message is Required !',
            'message.max' => 'Message max 2000 symbol !'
        ]);

        if ($validation->fails())
        {
            return back()->with('error', 'Nəsə düz getmədi ! Yenidən yoxlayın !');
        }

        ContactMessage::create($request->all());

        return back()->with('success', 'Sizin mesajınız uğurla göndərildi !');
    }

    public function getSubscripter(Request $request)
    {
        $validate = Validator::make($request->all(), [
            'email' => 'required|email|unique:subscribes,email'
        ], [
            'email.required' => 'Email Required !',
            'email.email' => 'Email format not correct !',
            'email.unique' => 'This email is already registered!'
        ]);

        if ($validate->fails())
        {
            return back()->with('error', 'Nəsə düz getmədi !, Yenidən yoxlayın !');
        }

        Subscribe::create($request->all());

        return back()->with('success', 'Siz uğurla abuna oldunuz !');
    }

    public function page($locale, $slug): View
    {
        $page = Page::where('slug', $slug)
            ->where('status', 'ACTIVE')
            ->with('translations')
            ->first();

        if (!$page)
        {
            abort(404);
        }

        return \view('Frontend.page', compact('page'));
    }

    public function services(): View
    {
        $services = Service::all();

        return \view('Frontend.services', compact('services'));
    }

    public function singleServices($locale, $slug): View
    {
        $singleService = Service::where('slug', $slug)
        ->with('translations')
        ->first();

        if (!$singleService)
        {
            abort(404);
        }

        return \view('Frontend.singleService', compact('singleService'));
    }

    public function singleNews($locale, $slug): View
    {
        $post = Post::where('slug', $slug)
            ->with('translations')
            ->first();

        if (!$post)
        {
            abort(404);
        }

        return \view('Frontend.singleNews', compact('post'));
    }

    public function car(): View
    {
        $cars = Car::paginate(15);

        return \view('Frontend.car', compact('cars'));
    }

    public function singleCar($locale, $slug): View
    {
        $car = Car::where('slug', $slug)
            ->with('translations')
            ->first();

        if (!$car)
        {
            abort(404);
        }

        return \view('Frontend.singleCar', compact('car'));
    }

    public function gallery(): View
    {
        $images = Gallery::all();

        return \view('Frontend.gallery', compact('images'));
    }

    public function techniques(): View
    {
        $techniques = Technique::all();
        $technique_cat = TechniqueCategory::all();

        return \view('Frontend.techniques', compact('techniques','technique_cat'));
    }

    public function techniquesSingle($locale, $slug): View
    {
        $techniquesSingle = Technique::where('slug', $slug)
            ->with('translations')
            ->first();

        if (!$techniquesSingle)
        {
            abort(404);
        }

        return \view('Frontend.techniquesSingle', compact('techniquesSingle'));
    }

    public function sector(): View
    {
        $sectors = Sector::all();

        return \view('Frontend.sector', compact('sectors'));
    }

    public function singleSector($locale, $slug): View
    {
        $singleSector = Sector::where('slug', $slug)
        ->with('translations')
        ->first();

        if (!$singleSector)
        {
            abort(404);
        }

        return \view('Frontend.singleSector', compact('singleSector'));
    }

    public function reservation(): View
    {
        $services = Service::all();
        $cars = Car::all();

        return \view('Frontend.reservation', compact('services', 'cars'));
    }

    public function bookOrder(Request $request)
    {
        $data = Validator::make($request->all(), [
            'name' => 'required|max:200',
            'email' => 'required|email|max:100',
            'phone' => 'required|max:100',
            'service_id' => 'required|max:10',
            'car_id' => 'max:10',
            'pickup_date' => 'date',
            'dropoff_date' => 'date',
            'pickup_location' => 'max:300',
            'dropoff_location' => 'max:300',
            'company_name' => 'max:100',
            'photos' => 'image|mimes:jpg,jpeg,png,webp,gif,svg|max:10000',
            'message' => 'max:5000'
        ], [
            'name.required' => 'Name is Required !',
            'name.max' => 'Name Max 200 symbol !',
            'email.email' => 'Email type not valid !',
            'email.max' => 'Email Max 10 symbol !',
            'phone.required' => 'Phone number is required !',
            'phone.max' => 'Phone max 100 symbol !',
            'service_id.required' => 'Service is Required !',
            'service_id.max' => 'Service Max 10 !',
            'car_id' => 'Car Max 10 symbol !',
            'pickup_date.date' => 'Pickup Date Format not valid !',
            'dropoff_date.date' => 'Dropoff Date Format Not valid !',
            'company_name.max' => 'Company name max 100 symbol !',
            'photos.image' => 'Photos format not valid !',
            'photos.mimes' => 'Photos mime type not valid !',
            'message.max' => 'Message max symbol 5000 !'
        ]);

        if ($data->fails())
        {
            return back()->withErrors($data);
        }

        if (!isNull($request->photos))
        {
            $path = 'reservations/August2023/';

            $imageFile = $request->file('photos');

            $imageName = md5(time(). '-' . $imageFile->getClientOriginalName());

            dd($imageName);

            $imageUpload = Storage::disk('public')->put($path,$imageName, (string) file_get_contents($imageFile));

            if ($imageUpload)
            {
                $save = new Reservation();
                $save->name = $request->input('name');
                $save->email = $request->input('email');
                $save->phone = $request->input('phone');
                $save->service_id = $request->input('service_id');
                $save->car_id = $request->input('car_id');
                $save->pickup_date = $request->input('pickup_date');
                $save->dropoff_date = $request->input('dropoff_date');
                $save->pickup_location = $request->input('pickup_location');
                $save->dropoff_location = $request->input('dropoff_location');
                $save->company_name = $request->input('company_name');
                $save->photos = json_encode([["photos" => $path.$imageName,"original_name" => "User IP :" . $request->ip() ]]);
                $save->message = $request->input('message');
                $save->save();

                return back()->with('success', 'Istəyiniz qeydə alındı. Qısa müddət ərzində sizinlə əlaqə saxlanılacaq.');
            }
            else {
                dd("error");
            }
        }

        if (Reservation::create($request->all()))
        {
            return back()->with('success', 'Istəyiniz qeydə alındı. Qısa müddət ərzində sizinlə əlaqə saxlanılacaq.');
        }

        return back()->with('error', 'Nəsə düz getmədi !');
    }
}
