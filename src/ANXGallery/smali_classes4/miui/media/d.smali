.class Lmiui/media/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/nio/MappedByteBuffer;I[B)V
    .locals 3

    .line 139
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 140
    add-int v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Ljava/nio/MappedByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method public static b([SI)[B
    .locals 5

    .line 154
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [B

    .line 155
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    .line 156
    mul-int/lit8 v3, v2, 0x2

    aget-short v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 157
    add-int/lit8 v3, v3, 0x1

    aget-short v4, p0, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 158
    aput-short v1, p0, v2

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    return-object v0
.end method

.method public static e(IZ)I
    .locals 2

    .line 12
    const/16 v0, 0x3ef

    const/16 v1, 0x3e7

    if-eqz p1, :cond_1

    .line 13
    const/16 p1, 0x64

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 24
    nop

    .line 25
    nop

    .line 58
    :goto_0
    move v0, v1

    goto :goto_1

    .line 18
    :pswitch_0
    nop

    .line 19
    goto :goto_1

    .line 15
    :pswitch_1
    const/16 v0, 0x3f0

    .line 16
    goto :goto_1

    .line 21
    :cond_0
    const/16 v0, 0x3f2

    .line 22
    goto :goto_1

    .line 28
    :cond_1
    packed-switch p0, :pswitch_data_1

    .line 54
    goto :goto_0

    .line 36
    :pswitch_2
    const/16 v0, 0x3f1

    .line 37
    goto :goto_1

    .line 42
    :pswitch_3
    nop

    .line 43
    goto :goto_1

    .line 30
    :pswitch_4
    const/16 v0, 0x3ee

    .line 31
    goto :goto_1

    .line 51
    :pswitch_5
    const/16 v0, 0x3ed

    .line 52
    goto :goto_1

    .line 33
    :pswitch_6
    const/16 v0, 0x3ec

    .line 34
    goto :goto_1

    .line 48
    :pswitch_7
    const/16 v0, 0x3eb

    .line 49
    goto :goto_1

    .line 45
    :pswitch_8
    const/16 v0, 0x3ea

    .line 46
    goto :goto_1

    .line 39
    :pswitch_9
    const/16 v0, 0x3e9

    .line 40
    nop

    .line 58
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static g(J)[B
    .locals 5

    .line 145
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 146
    const-wide/16 v1, 0xff

    and-long v3, p0, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 147
    const/16 v3, 0x8

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 148
    const/16 v3, 0x10

    shr-long v3, p0, v3

    and-long/2addr v3, v1

    long-to-int v3, v3

    int-to-byte v3, v3

    const/4 v4, 0x2

    aput-byte v3, v0, v4

    .line 149
    const/16 v3, 0x18

    shr-long/2addr p0, v3

    and-long/2addr p0, v1

    long-to-int p0, p0

    int-to-byte p0, p0

    const/4 p1, 0x3

    aput-byte p0, v0, p1

    .line 150
    return-object v0
.end method

.method public static j(II)[B
    .locals 14

    .line 62
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-ne p0, v2, :cond_0

    .line 63
    move p0, v1

    goto :goto_0

    .line 62
    :cond_0
    nop

    .line 63
    move p0, v0

    :goto_0
    const/16 v3, 0x2c

    new-array v3, v3, [B

    .line 65
    const/16 v4, 0x52

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 66
    const/16 v4, 0x49

    aput-byte v4, v3, v1

    .line 67
    const/16 v4, 0x46

    aput-byte v4, v3, v0

    .line 68
    const/4 v0, 0x3

    aput-byte v4, v3, v0

    .line 71
    const/4 v0, 0x4

    aput-byte v5, v3, v0

    .line 72
    const/4 v0, 0x5

    aput-byte v5, v3, v0

    .line 73
    const/4 v0, 0x6

    aput-byte v5, v3, v0

    .line 74
    const/4 v0, 0x7

    aput-byte v5, v3, v0

    .line 77
    const/16 v0, 0x57

    const/16 v4, 0x8

    aput-byte v0, v3, v4

    .line 78
    const/16 v0, 0x9

    const/16 v6, 0x41

    aput-byte v6, v3, v0

    .line 79
    const/16 v0, 0xa

    const/16 v6, 0x56

    aput-byte v6, v3, v0

    .line 80
    const/16 v0, 0xb

    const/16 v6, 0x45

    aput-byte v6, v3, v0

    .line 83
    const/16 v0, 0xc

    const/16 v6, 0x66

    aput-byte v6, v3, v0

    .line 84
    const/16 v0, 0xd

    const/16 v6, 0x6d

    aput-byte v6, v3, v0

    .line 85
    const/16 v0, 0xe

    const/16 v6, 0x74

    aput-byte v6, v3, v0

    .line 86
    const/16 v0, 0xf

    const/16 v7, 0x20

    aput-byte v7, v3, v0

    .line 89
    aput-byte v2, v3, v2

    .line 90
    const/16 v0, 0x11

    aput-byte v5, v3, v0

    .line 91
    const/16 v0, 0x12

    aput-byte v5, v3, v0

    .line 92
    const/16 v0, 0x13

    aput-byte v5, v3, v0

    .line 95
    const/16 v0, 0x14

    aput-byte v1, v3, v0

    .line 96
    const/16 v0, 0x15

    aput-byte v5, v3, v0

    .line 99
    const/16 v0, 0x16

    int-to-byte v1, p0

    aput-byte v1, v3, v0

    .line 100
    const/16 v0, 0x17

    aput-byte v5, v3, v0

    .line 103
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/16 v1, 0x18

    aput-byte v0, v3, v1

    .line 104
    const/16 v0, 0x19

    shr-int/lit8 v8, p1, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v0

    .line 105
    const/16 v0, 0x1a

    shr-int/lit8 v8, p1, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v0

    .line 106
    const/16 v0, 0x1b

    shr-int/lit8 v8, p1, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v3, v0

    .line 108
    mul-int/2addr p1, p0

    mul-int/2addr p1, v2

    div-int/2addr p1, v4

    int-to-long v8, p1

    .line 110
    const/16 p1, 0x1c

    const-wide/16 v10, 0xff

    and-long v12, v8, v10

    long-to-int v0, v12

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    .line 111
    const/16 p1, 0x1d

    shr-long v12, v8, v4

    and-long/2addr v12, v10

    long-to-int v0, v12

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    .line 112
    const/16 p1, 0x1e

    shr-long v12, v8, v2

    and-long/2addr v12, v10

    long-to-int v0, v12

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    .line 113
    const/16 p1, 0x1f

    shr-long v0, v8, v1

    and-long/2addr v0, v10

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, v3, p1

    .line 116
    mul-int/2addr p0, v2

    div-int/2addr p0, v4

    int-to-byte p0, p0

    aput-byte p0, v3, v7

    .line 117
    const/16 p0, 0x21

    aput-byte v5, v3, p0

    .line 120
    const/16 p0, 0x22

    aput-byte v2, v3, p0

    .line 121
    const/16 p0, 0x23

    aput-byte v5, v3, p0

    .line 124
    const/16 p0, 0x24

    const/16 p1, 0x64

    aput-byte p1, v3, p0

    .line 125
    const/16 p0, 0x25

    const/16 p1, 0x61

    aput-byte p1, v3, p0

    .line 126
    const/16 p0, 0x26

    aput-byte v6, v3, p0

    .line 127
    const/16 p0, 0x27

    aput-byte p1, v3, p0

    .line 130
    const/16 p0, 0x28

    aput-byte v5, v3, p0

    .line 131
    const/16 p0, 0x29

    aput-byte v5, v3, p0

    .line 132
    const/16 p0, 0x2a

    aput-byte v5, v3, p0

    .line 133
    const/16 p0, 0x2b

    aput-byte v5, v3, p0

    .line 135
    return-object v3
.end method
