package com.miui.internal.hybrid;

import miui.hybrid.Response;

public class HybridException extends Exception {
    private static final long serialVersionUID = 1;
    private Response mResponse;

    public HybridException() {
        super(new Response((int) Response.CODE_GENERIC_ERROR).toString());
        this.mResponse = new Response((int) Response.CODE_GENERIC_ERROR);
    }

    public HybridException(String str) {
        super(new Response((int) Response.CODE_GENERIC_ERROR, str).toString());
        this.mResponse = new Response((int) Response.CODE_GENERIC_ERROR, str);
    }

    public HybridException(int i, String str) {
        super(new Response(i, str).toString());
        this.mResponse = new Response(i, str);
    }

    public HybridException(Response response) {
        super(response.toString());
        this.mResponse = response;
    }

    public Response getResponse() {
        return this.mResponse;
    }
}
