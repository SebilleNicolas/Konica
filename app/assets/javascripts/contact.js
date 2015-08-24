
  
// // Shorthand for $( document ).ready()
// $(function() {

// var margin = {top: 10, right: 20, bottom: 30, left: 200},
//     width = 960 - margin.left - margin.right,
//     barHeight = 20,
//     barWidth = width * .8;

// var i = 0,
//     duration = 400,
//     root;

// var tree = d3.layout.tree()
//     .nodeSize([0, 20]);

// //Affiche les traits
// var diagonal = d3.svg.diagonal()
//     .projection(function(d) { return [d.y, d.x]; });

// // var svg = d3.select("body").append("svg")
// //     .attr("width", width + margin.left + margin.right)
// //   .append("g")
// //     .attr("transform", "translate(" + margin.left + "," + margin.top + ")");

// var svg = d3.select("body").append("svg")
//     .attr("width", width + margin.left + margin.right)
//   .append("g")
//     .attr("transform", "translate(" + margin.left + "," + margin.top + ")");


// d3.json("images/flare.json", function(error, flare) {
//   flare.x0 = 0;
//   flare.y0 = 0;
//   update(root = flare);
// });

// function update(source) {

//   // Compute the flattened node list. TODO use d3.layout.hierarchy.

//   var nodes = tree.nodes(root);

//   var height = Math.max(500, nodes.length * barHeight + margin.top + margin.bottom);

//   d3.select("svg").transition()
//       .duration(duration)
//       .attr("height", height);

//   d3.select(self.frameElement).transition()
//       .duration(duration)
//       .style("height", height + "px");

//   // Compute the "layout". (affiche de plus en plus bas les elements)
//   nodes.forEach(function(n, i) {
//     n.x = i * barHeight;
//   });

//   // Update the nodes…

//   var node = svg.selectAll("g.node")
//       .data(nodes, function(d) { return d.id || (d.id = ++i); });

//   var nodeEnter = node.enter().append("g")
//       .attr("class", "node")
//       .attr("transform", function(d) { return "translate(" + source.y0 + "," + source.x0 + ")"; })
//       .style("opacity", 1e-6);


//   // Enter any new nodes at the parent's previous position.
//   nodeEnter.append("rect")
//       .attr("y", -barHeight / 2)
//       .attr("height", barHeight)
//       .attr("width", barWidth)
//       .style("fill", color)
//       .on("click", click);

//   nodeEnter.append("text")
//       .attr("dy", 3.5)
//       .attr("dx", 5.5)
//       .text(function(d) { return d.name; });

//   // Transition nodes to their new position.
//   nodeEnter.transition()
//       .duration(duration)
//       .attr("transform", function(d) { return "translate(" + d.y + "," + d.x + ")"; })
//       .style("opacity", 1);

//   node.transition()
//       .duration(duration)
//       .attr("transform", function(d) { return "translate(" + d.y + "," + d.x + ")"; })
//       .style("opacity", 1)
//     .select("rect")
//       .style("fill", color);

//   // Transition exiting nodes to the parent's new position.
//   node.exit().transition()
//       .duration(duration)
//       .attr("transform", function(d) { return "translate(" + source.y + "," + source.x + ")"; })
//       .style("opacity", 1e-6)
//       .remove();

//   // Update the links…
//   var link = svg.selectAll("path.link")
//       .data(tree.links(nodes), function(d) { return d.target.id; });

//   // Enter any new links at the parent's previous position. (Affiche les liens)
//   link.enter().insert("path", "g")
//       .attr("class", "link")
//       .attr("d", function(d) {
//         var o = {x: source.x0, y: source.y0};
//         return diagonal({source: o, target: o});
//         alert( diagonal({source: o, target: o}));
//       })
//     .transition()
//       .duration(duration)
//       .attr("d", diagonal);

//   // Transition links to their new position.
//   link.transition()
//       .duration(duration)
//       .attr("d", diagonal);

//   // Transition exiting nodes to the parent's new position.
//   link.exit().transition()
//       .duration(duration)
//       .attr("d", function(d) {
//         var o = {x: source.x, y: source.y};
//         return diagonal({source: o, target: o});
//       })
//       .remove();

//   // Stash the old positions for transition.
//   nodes.forEach(function(d) {
//     d.x0 = d.x;
//     d.y0 = d.y;
//   });



// }

// // Toggle children on click.
// function click(d) {
//   if (d.children) {
//     d._children = d.children;
//     d.children = null;
//   } else {
//     d.children = d._children;
//     d._children = null;
//   }
//   update(d);
// }

// function color(d) {
//   return d._children ? "#3182bd" : d.children ? "#c6dbef" : "#fd8d3c";
// }

// });
$(function() {
// d3.selectAll("circle").on("mouseover", function() {console.log("ff")});
// d3.selectAll("circle").on("mouseover", function() { d3.select(this).transition().duration(1000).attr("r","20")});
// d3.selectAll("circle").on("mouseout", function() { d3.select(this).transition().duration(1000).attr("r","10")});


 // var data = [ {name: "p1", children: [{name: "c1"}, {name: "c2"}, {name: "c3"}, {name: "c4"}]}];
 //    var width = 400, height = 200, radius = 10, gap = 50;

 //    // test layout
 //    var nodes = [];
 //    var links = [];
 //    data.forEach(function(d, i) {
 //        d.x = width/4;
 //        d.y = height/2;
 //        nodes.push(d);
 //        d.children.forEach(function(c, i) {
 //            c.x = 3*width/4;
 //            c.y = gap * (i +1) -2*radius;
 //            nodes.push(c);
 //            links.push({source: d, target: c});
 //        })
 //    })

 //    var color = d3.scale.category20();

 //    var svg = d3.select("#chart").append("svg")
 //            .attr("width", width)
 //            .attr("height", height)
 //            .append("g");
 //    var diagonal = d3.svg.diagonal()
 //        .source(function(d) { return {"x":d.source.y, "y":d.source.x}; })            
 //        .target(function(d) { return {"x":d.target.y, "y":d.target.x}; })
 //        .projection(function(d) { return [d.y, d.x]; });

 //    var link = svg.selectAll(".link")
 //            .data(links)
 //            .enter().append("path")
 //            .attr("class", "link")
 //            .attr("d", diagonal);

 //    var circle = svg.selectAll(".circle")
 //            .data(nodes)
 //            .enter()
 //            .append("g")
 //            .attr("class", "circle");

 //    var el = circle.append("circle")
 //            .attr("cx", function(d) {return d.x})
 //            .attr("cy", function(d) {return d.y})
 //            .attr("r", radius)
 //            .style("fill", function(d) {return color(d.name)})
 //            .append("title").text(function(d) {return d.name});








// var lineFunction = d3.svg.diagonal()
//    .projection(function(d) { return [d.y, d.x] });

// var svgContainer = d3.select("body").append("svg")
//                                 .attr("width", 1000)
//                                 .attr("height", 1000);
// d3.select("body")    .enter()
//     .append("path")
//     .attr("class", "link")
//     .attr("d", lineFunction);










  // d3.selectAll("circle").attr("d", d3.svg.diagonal()
  //                    .source( {"cx":40, "cy":60} )
  //                    .target( {"cx":80, "cy":60} ) 
  //                     .projection(function() { return [80, 60]; }
  //        );

            
});
// d3.selectAll("#circle").on("mouseout", function() { d3.select(this).transition().duration(1000).attr("width","200")});
// d3.selectAll("#circle").on("mouseover", function() { d3.select(#rect).transition().duration(1000).attr("width","350")});
