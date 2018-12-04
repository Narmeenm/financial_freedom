import "bootstrap";
import "../plugins/flatpickr"
import Chartkick from "chartkick";
import Chart from "chart.js";
import { category_toggle } from "../components/category.js";


window.Chartkick = Chartkick;
Chartkick.addAdapter(Chart);
category_toggle();
