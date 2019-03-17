.class public interface abstract Lcom/ali/auth/third/core/callback/ResultCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ali/auth/third/core/callback/FailureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ali/auth/third/core/callback/FailureCallback;"
    }
.end annotation


# virtual methods
.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
