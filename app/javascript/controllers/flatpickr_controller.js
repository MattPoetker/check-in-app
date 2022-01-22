// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import flatpickr from "flatpickr";
import { Controller } from "stimulus"
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin'

export default class extends Controller {
  static targets = [ "picker" ]

  connect() {
    console.log('Flatpickr Connected!');
    // load flatpickr with default settings
    if (this.hasPickerTarget) {
      console.log(this.pickerTarget);
    }

    const fp = flatpickr(this.pickerTarget, this.settings())
    
  }

  settings() {
    return { "plugins": [new rangePlugin({ input: "#event_end_date"})] }
  }
}
