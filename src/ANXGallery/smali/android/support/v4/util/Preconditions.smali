.class public Landroid/support/v4/util/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# direct methods
.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 100
    :cond_0
    return-object p0
.end method
