<?php

namespace App\Providers;

use App\Models\Category;
use Closure;
use Illuminate\Support\ServiceProvider;
use Mockery\Generator\StringManipulation\Pass\AvoidMethodClashPass;
use View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        View::composer(['website.master'], function ($view){
            $view->with('categories', Category::all());
        });
    }
}
