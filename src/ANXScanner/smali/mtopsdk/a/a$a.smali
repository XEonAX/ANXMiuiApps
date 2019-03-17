.class public final Lmtopsdk/a/a$a;
.super Ljava/lang/Object;
.source "ISign.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lmtopsdk/a/a$a;->a:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/a/a$a;->b:Ljava/lang/String;

    .line 21
    return-void
.end method
