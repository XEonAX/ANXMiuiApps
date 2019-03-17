.class public final Lorg/android/spdy/TnetStatusCode;
.super Ljava/lang/Object;
.source "TnetStatusCode.java"


# static fields
.field public static final EASY_DEFAULT_ERROR:I = -0xed8

.field public static final EASY_EAGAIN:I = -0xf08

.field public static final EASY_OK:I = 0x0

.field public static final EASY_REASON_CANCEL:I = -0x7d5

.field public static final EASY_REASON_CONN_ERROR:I = -0x9c4

.field public static final EASY_REASON_CONN_NOT_EXISTS:I = -0x7d1

.field public static final EASY_REASON_CONN_TIMEOUT:I = -0x7d3

.field public static final EASY_REASON_DISCONNECT:I = -0x7d2

.field public static final EASY_REASON_HANDSHAKE_ERROR:I = -0xbb8

.field public static final EASY_REASON_INVALID_DATA:I = -0x7f5

.field public static final EASY_REASON_IO_STOPED:I = -0x7ee

.field public static final EASY_REASON_NO_MEM:I = -0x7ef

.field public static final EASY_REASON_READ_ERROR:I = -0x834

.field public static final EASY_REASON_SERVER_CLOSE:I = -0x7f0

.field public static final EASY_REASON_SESSION_TIMEOUT:I = -0x7d4

.field public static final EASY_REASON_SLIGHTSSL_ERROR:I = -0xdac

.field public static final EASY_REASON_SPDYINIT_ERROR:I = -0x7f4

.field public static final EASY_REASON_WRITE_ERROR:I = -0x8fc

.field public static final EASY_REQ_STAGE_NOT_SEND:I = -0x1

.field public static final EASY_REQ_STAGE_SEND_FAIL:I = -0x2

.field public static final EASY_REQ_STATE_OK:I = 0x0

.field public static final EASY_REQ_STATE_PROCESS_RSP_FAIL:I = -0x3

.field public static final EASY_SPDY_CANCEL:I = -0x7de

.field public static final EASY_SPDY_FLOW_CONTROL_ERROR:I = -0x7e0

.field public static final EASY_SPDY_FRAME_TOO_LARGE:I = -0x7e4

.field public static final EASY_SPDY_INTERNAL_ERROR:I = -0x7df

.field public static final EASY_SPDY_INVALID_CREDENTIALS:I = -0x7e3

.field public static final EASY_SPDY_INVALID_STREAM:I = -0x7db

.field public static final EASY_SPDY_PROTOCOL_ERROR:I = -0x7da

.field public static final EASY_SPDY_REFUSED_STREAM:I = -0x7dc

.field public static final EASY_SPDY_SESSION_INTERNAL_ERROR:I = -0x7e6

.field public static final EASY_SPDY_SESSION_PROTOCOL_ERROR:I = -0x7e5

.field public static final EASY_SPDY_STREAM_ALREADY_CLOSED:I = -0x7e2

.field public static final EASY_SPDY_STREAM_IN_USE:I = -0x7e1

.field public static final EASY_SPDY_UNSUPPORTED_VERSION:I = -0x7dd

.field public static final TNET_JNI_ERR_ASYNC_CLOSE:I = -0x450

.field public static final TNET_JNI_ERR_BASE:I = -0x44d

.field public static final TNET_JNI_ERR_INVLID_PARAM:I = -0x44e

.field public static final TNET_JNI_ERR_LOAD_SO_FAIL:I = -0x454

.field public static final TNET_JNI_ERR_NOT_SUPPORT_API:I = -0x453

.field public static final TNET_JNI_ERR_NO_MEM:I = -0x44d

.field public static final TNET_JNI_ERR_STATUS_ERR:I = -0x44f

.field public static final TNET_SESSION_EXCEED_MAXED:I = -0x451


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getErrno(I)I
    .locals 2
    .param p0, "error"    # I

    .prologue
    const/4 v0, 0x0

    .line 200
    const/16 v1, -0xed8

    if-gt p0, v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    const/16 v1, -0xdac

    if-gt p0, v1, :cond_2

    .line 203
    rsub-int v0, p0, -0xdac

    goto :goto_0

    .line 204
    :cond_2
    const/16 v1, -0xbb8

    if-gt p0, v1, :cond_3

    .line 205
    rsub-int v0, p0, -0xbb8

    goto :goto_0

    .line 206
    :cond_3
    const/16 v1, -0x9c4

    if-gt p0, v1, :cond_4

    .line 207
    rsub-int v0, p0, -0x9c4

    goto :goto_0

    .line 208
    :cond_4
    const/16 v1, -0x8fc

    if-gt p0, v1, :cond_5

    .line 209
    rsub-int v0, p0, -0x8fc

    goto :goto_0

    .line 210
    :cond_5
    const/16 v1, -0x834

    if-gt p0, v1, :cond_0

    .line 211
    rsub-int v0, p0, -0x834

    goto :goto_0
.end method

.method public static final getReqStage(I)I
    .locals 1
    .param p0, "error"    # I

    .prologue
    .line 154
    invoke-static {p0}, Lorg/android/spdy/TnetStatusCode;->getStatusCode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 169
    const/4 v0, -0x2

    :goto_0
    return v0

    .line 156
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :sswitch_1
    const/4 v0, -0x1

    goto :goto_0

    .line 167
    :sswitch_2
    const/4 v0, -0x3

    goto :goto_0

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        -0xbb8 -> :sswitch_1
        -0x9c4 -> :sswitch_1
        -0x7f5 -> :sswitch_1
        -0x7f4 -> :sswitch_1
        -0x7ee -> :sswitch_1
        -0x7e1 -> :sswitch_2
        -0x7da -> :sswitch_2
        -0x7d3 -> :sswitch_1
        -0x7d1 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getStatusCode(I)I
    .locals 6
    .param p0, "error"    # I

    .prologue
    const/16 v4, -0x834

    const/16 v3, -0x8fc

    const/16 v2, -0x9c4

    const/16 v1, -0xbb8

    const/16 v0, -0xdac

    .line 178
    const/16 v5, -0xed8

    if-gt p0, v5, :cond_1

    .line 191
    .end local p0    # "error":I
    :cond_0
    :goto_0
    return p0

    .line 180
    .restart local p0    # "error":I
    :cond_1
    if-gt p0, v0, :cond_2

    move p0, v0

    .line 181
    goto :goto_0

    .line 182
    :cond_2
    if-gt p0, v1, :cond_3

    move p0, v1

    .line 183
    goto :goto_0

    .line 184
    :cond_3
    if-gt p0, v2, :cond_4

    move p0, v2

    .line 185
    goto :goto_0

    .line 186
    :cond_4
    if-gt p0, v3, :cond_5

    move p0, v3

    .line 187
    goto :goto_0

    .line 188
    :cond_5
    if-gt p0, v4, :cond_0

    move p0, v4

    .line 189
    goto :goto_0
.end method
