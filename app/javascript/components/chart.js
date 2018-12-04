import { GoogleCharts } from 'google-charts';



// function category_toggle() {

//   const buttons = document.querySelectorAll('.button-listener');
//   buttons.forEach((element)=> {
//     element.addEventListener("click", ()=> {
//     let content =  element.querySelector('.dropdown-content');
//     content.classList.toggle('hidden');
//    });
//   })
// }

function drawChart() {
  //debugger
  var data = GoogleCharts.api.visualization.arrayToDataTable([
    ['Content', 'Size'],
    ['Photos',     80],
    ['Videos',      20],

  ]);

  var options = {
    title: "",
    pieHole: 0.7,
    pieSliceBorderColor: "none",
     colors: ['#492ea0', '#b3adf7', '#eaeaea' ],
    legend: {
      position: "none"
    },
    pieSliceText: "none",
    tooltip: {
      trigger: "none"
    }
  };


  var chart = new GoogleCharts.api.visualization
      .PieChart(document.getElementById('chart'));

  chart.draw(data, options);

}


export { drawChart }
