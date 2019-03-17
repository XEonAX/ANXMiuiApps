.class public final Lcom/google/common/base/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public static nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method
