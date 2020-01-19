/**
 *  status2.js
 */
//two-graph
var w = 800, h = 800;
var dataName = ["현상", "기준", "민우", "종근", "기준"];
var graphData = [19, 10, 10, 10, 6];
var colorData = ["#FD2F56", "#F1E7DE", "#008000", "#5ED1D4", "#FFC001"];
var pie = d3.pie();
var arc = d3.arc().innerRadius(120).outerRadius(350);
 
var svg = d3.select(".two-graph")
    .append("svg")
    .attr("width", w)
    .attr("height", h)
    .attr("id", "graphWrap2");
 
var g = svg.selectAll(".pie")
    .data(pie(graphData))
    .enter()
    .append("g")
    .attr("class", "pie")
    .attr("transform","translate("+w/2+","+h/2+")");
 
g.append("path")
    .style("fill", function(d, i) {
        return colorData[i];
    }) 
    .transition()
    .duration(500)
    .delay(function(d, i) { 
        return i * 500;
    })
    .attrTween("d", function(d, i) { 
        var interpolate = d3.interpolate(
            {startAngle : d.startAngle, endAngle : d.startAngle}, 
            {startAngle : d.startAngle, endAngle : d.endAngle} 
        );
        return function(t){
            return arc(interpolate(t)); 
        }
    });
 
g.append("text")
    .attr("transform", function(d) { return "translate(" + arc.centroid(d) + ")"; })
    .attr("dy", ".35em")
    .style("text-anchor", "middle")
    .text(function(d, i) {
        return  d.endAngle-d.startAngle > 0.2 ?
                dataName[i] + " (" + Math.round(1000*(d.endAngle-d.startAngle)/(Math.PI*2))/10 + "%)" : ""
    });
 
svg.append("text")
    .attr("class", "total")
    .attr("transform", "translate("+(w/2-35)+", "+(h/2+5)+")")
    .text(" 케이시:" + d3.sum(graphData));