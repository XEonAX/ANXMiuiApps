.class public Lmiui/media/RecorderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/media/RecorderFactory$AudioFormat;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getRecorder(I)Lmiui/media/Recorder;
    .locals 0

    .line 48
    packed-switch p0, :pswitch_data_0

    .line 65
    new-instance p0, Lmiui/media/a;

    invoke-direct {p0}, Lmiui/media/a;-><init>()V

    goto :goto_0

    .line 62
    :pswitch_0
    new-instance p0, Lmiui/media/LocalWavRecorder;

    invoke-direct {p0}, Lmiui/media/LocalWavRecorder;-><init>()V

    .line 63
    goto :goto_0

    .line 59
    :pswitch_1
    new-instance p0, Lmiui/media/LocalMediaRecorder;

    invoke-direct {p0}, Lmiui/media/LocalMediaRecorder;-><init>()V

    .line 60
    goto :goto_0

    .line 56
    :pswitch_2
    new-instance p0, Lmiui/media/b;

    invoke-direct {p0}, Lmiui/media/b;-><init>()V

    .line 57
    goto :goto_0

    .line 53
    :pswitch_3
    new-instance p0, Lmiui/media/c;

    invoke-direct {p0}, Lmiui/media/c;-><init>()V

    .line 54
    goto :goto_0

    .line 50
    :pswitch_4
    new-instance p0, Lmiui/media/a;

    invoke-direct {p0}, Lmiui/media/a;-><init>()V

    .line 51
    nop

    .line 68
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
