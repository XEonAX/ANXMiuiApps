.class Lorg/android/spdy/SpdySession$1;
.super Ljava/lang/Object;
.source "SpdySession.java"

# interfaces
.implements Lorg/android/spdy/ProtectedPointer$ProtectedPointerOnClose;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/android/spdy/SpdySession;-><init>(JLorg/android/spdy/SpdyAgent;Ljava/lang/String;Ljava/lang/String;Lorg/android/spdy/SessionCb;IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/android/spdy/SpdySession;


# direct methods
.method constructor <init>(Lorg/android/spdy/SpdySession;)V
    .locals 0
    .param p1, "this$0"    # Lorg/android/spdy/SpdySession;

    .prologue
    .line 50
    iput-object p1, p0, Lorg/android/spdy/SpdySession$1;->this$0:Lorg/android/spdy/SpdySession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 53
    move-object v0, p1

    check-cast v0, Lorg/android/spdy/SpdySession;

    .line 54
    .local v0, "session":Lorg/android/spdy/SpdySession;
    invoke-static {v0}, Lorg/android/spdy/SpdySession;->access$000(Lorg/android/spdy/SpdySession;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/android/spdy/SpdySession;->access$100(Lorg/android/spdy/SpdySession;J)I

    .line 55
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/android/spdy/SpdySession;->setSessionNativePtr(J)V

    .line 56
    return-void
.end method
