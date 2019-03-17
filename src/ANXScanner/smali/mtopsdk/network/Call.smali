.class public interface abstract Lmtopsdk/network/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/network/Call$Factory;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract enqueue(Lmtopsdk/network/NetworkCallback;)V
.end method

.method public abstract execute()Lmtopsdk/network/domain/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract request()Lmtopsdk/network/domain/Request;
.end method
