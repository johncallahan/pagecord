// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import AutogrowController from "./autogrow_controller"
application.register("autogrow", AutogrowController)

import PaddleController from "./paddle_controller"
application.register("paddle", PaddleController)

import SelectController from "./select_controller"
application.register("select", SelectController)

import VanishController from "./vanish_controller"
application.register("vanish", VanishController)
