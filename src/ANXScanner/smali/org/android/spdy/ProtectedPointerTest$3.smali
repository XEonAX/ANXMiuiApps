.class final Lorg/android/spdy/ProtectedPointerTest$3;
.super Ljava/lang/Object;
.source "ProtectedPointerTest.java"

# interfaces
.implements Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/spdy/ProtectedPointerTest;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 79
    move-object v0, p1

    check-cast v0, Lorg/android/spdy/ProtectedPointerTest$Data;

    .line 80
    .local v0, "dd":Lorg/android/spdy/ProtectedPointerTest$Data;
    invoke-virtual {v0}, Lorg/android/spdy/ProtectedPointerTest$Data;->destroy()V

    .line 81
    return-void
.end method
