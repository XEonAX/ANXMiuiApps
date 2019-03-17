.class public Lorg/android/spdy/ProtectedPointerTest;
.super Ljava/lang/Object;
.source "ProtectedPointerTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/android/spdy/ProtectedPointerTest$Data;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 74
    new-instance v0, Lorg/android/spdy/ProtectedPointerTest$Data;

    invoke-direct {v0}, Lorg/android/spdy/ProtectedPointerTest$Data;-><init>()V

    .line 75
    .local v0, "a":Lorg/android/spdy/ProtectedPointerTest$Data;
    new-instance v2, Lorg/android/spdy/ProtectedPointer;

    invoke-direct {v2, v0}, Lorg/android/spdy/ProtectedPointer;-><init>(Ljava/lang/Object;)V

    .line 76
    .local v2, "pptr":Lorg/android/spdy/ProtectedPointer;
    new-instance v3, Lorg/android/spdy/ProtectedPointerTest$3;

    invoke-direct {v3}, Lorg/android/spdy/ProtectedPointerTest$3;-><init>()V

    invoke-virtual {v2, v3}, Lorg/android/spdy/ProtectedPointer;->setHow2close(Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;)V

    .line 83
    invoke-static {v2}, Lorg/android/spdy/ProtectedPointerTest;->test_close_with_work(Lorg/android/spdy/ProtectedPointer;)V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "a":Lorg/android/spdy/ProtectedPointerTest$Data;
    .end local v2    # "pptr":Lorg/android/spdy/ProtectedPointer;
    :cond_0
    return-void
.end method

.method public static test_close_anywhere1(Lorg/android/spdy/ProtectedPointer;)V
    .locals 2
    .param p0, "pptr"    # Lorg/android/spdy/ProtectedPointer;

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->enter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/ProtectedPointerTest$Data;

    .line 64
    .local v0, "data":Lorg/android/spdy/ProtectedPointerTest$Data;
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->release()V

    .line 65
    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointerTest$Data;->work()V

    .line 66
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->exit()V

    .line 68
    .end local v0    # "data":Lorg/android/spdy/ProtectedPointerTest$Data;
    :cond_0
    return-void
.end method

.method public static test_close_with_work(Lorg/android/spdy/ProtectedPointer;)V
    .locals 3
    .param p0, "pptr"    # Lorg/android/spdy/ProtectedPointer;

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lorg/android/spdy/ProtectedPointerTest$1;

    invoke-direct {v2, p0}, Lorg/android/spdy/ProtectedPointerTest$1;-><init>(Lorg/android/spdy/ProtectedPointer;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    .local v0, "a":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/android/spdy/ProtectedPointerTest$2;

    invoke-direct {v2, p0}, Lorg/android/spdy/ProtectedPointerTest$2;-><init>(Lorg/android/spdy/ProtectedPointer;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    .local v1, "b":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 58
    return-void
.end method

.method public static test_sequece(Lorg/android/spdy/ProtectedPointer;)V
    .locals 0
    .param p0, "pptr"    # Lorg/android/spdy/ProtectedPointer;

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/android/spdy/ProtectedPointer;->release()V

    .line 32
    return-void
.end method
