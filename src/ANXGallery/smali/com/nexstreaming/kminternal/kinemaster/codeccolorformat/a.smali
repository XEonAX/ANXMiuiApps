.class Lcom/nexstreaming/kminternal/kinemaster/codeccolorformat/a;
.super Ljava/lang/Object;
.source "WrapMediaCodec.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 41
    const-string v0, "UNKNOWN"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 24
    :pswitch_0
    const-string v0, "INFO_OUTPUT_BUFFERS_CHANGED"

    goto :goto_0

    .line 27
    :pswitch_1
    const-string v0, "INFO_OUTPUT_FORMAT_CHANGED"

    goto :goto_0

    .line 30
    :pswitch_2
    const-string v0, "INFO_TRY_AGAIN_LATER"

    goto :goto_0

    .line 33
    :pswitch_3
    const-string v0, "BUFFER_FLAG_END_OF_STREAM"

    goto :goto_0

    .line 36
    :pswitch_4
    const-string v0, "BUFFER_FLAG_CODEC_CONFIG"

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
