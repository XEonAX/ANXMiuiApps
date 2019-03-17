.class Lorg/android/spdy/ProtectedPointerTest$Data;
.super Ljava/lang/Object;
.source "ProtectedPointerTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/spdy/ProtectedPointerTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field private i:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lorg/android/spdy/ProtectedPointerTest$Data;->i:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lorg/android/spdy/ProtectedPointerTest$Data;->i:I

    .line 21
    return-void
.end method

.method public work()V
    .locals 2

    .prologue
    .line 13
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "work"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lorg/android/spdy/ProtectedPointerTest$Data;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 15
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 17
    :cond_0
    return-void
.end method
