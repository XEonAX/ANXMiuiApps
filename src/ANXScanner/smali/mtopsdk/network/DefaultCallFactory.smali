.class public Lmtopsdk/network/DefaultCallFactory;
.super Ljava/lang/Object;
.source "DefaultCallFactory.java"

# interfaces
.implements Lmtopsdk/network/Call$Factory;


# instance fields
.field executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lmtopsdk/network/DefaultCallFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 17
    return-void
.end method


# virtual methods
.method public newCall(Lmtopsdk/network/domain/Request;)Lmtopsdk/network/Call;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lmtopsdk/network/DefaultCallImpl;

    iget-object v1, p0, Lmtopsdk/network/DefaultCallFactory;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, v1}, Lmtopsdk/network/DefaultCallImpl;-><init>(Lmtopsdk/network/domain/Request;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method
