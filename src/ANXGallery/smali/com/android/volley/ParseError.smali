.class public Lcom/android/volley/ParseError;
.super Lcom/android/volley/VolleyError;
.source "ParseError.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/volley/VolleyError;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method
