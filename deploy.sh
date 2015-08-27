#!/bin/bash
mkdir -p /static/js
mkdir -p /static/dashboard

# Add third party JS files under ./static
cp -r third_party/jquery/dist/jquery.min.js ./static/js/
cp -r third_party/bootstrap/dist/js/bootstrap.min.js ./static/js/
cp -r third_party/angular/angular.min.js ./static/js/
cp -r third_party/angular-route/angular-route.min.js ./static/js/
cp -r third_party/d3/d3.min.js ./static/js/
cp -r third_party/nvd3/build/nv.d3.min.js ./static/js/
cp -r third_party/angular-nvd3/dist/angular-nvd3.min.js ./static/js/
cp -r third_party/ng-table/dist/ng-table.min.js ./static/js/
cp -r third_party/dashboard/js ./static/dashboard/


# Add third party CSS files under ./static
cp -r third_party/bootstrap/dist/css/bootstrap.min.css ./static/css/
cp -r third_party/custom_bootstrap/main.css ./static/css/
cp -r third_party/nvd3/build/nv.d3.css ./static/css/
cp -r third_party/ng-table/dist/ng-table.min.css ./static/css/
cp -r third_party/dashboard/css ./static/dashboard/

godep go build

