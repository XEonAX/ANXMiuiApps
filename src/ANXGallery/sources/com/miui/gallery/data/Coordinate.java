package com.miui.gallery.data;

class Coordinate {
    public double latitude;
    public double longitude;

    public Coordinate(double latitude, double longitude) {
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public Coordinate(String latitudeString, String latitudeRef, String longitudeString, String longitudeRef) {
        this.latitude = LocationUtil.convertRationalLatLonToDouble(latitudeString, latitudeRef);
        this.longitude = LocationUtil.convertRationalLatLonToDouble(longitudeString, longitudeRef);
    }

    public boolean isValid() {
        return LocationUtil.isValidateCoordinate(this.latitude, this.longitude);
    }
}
