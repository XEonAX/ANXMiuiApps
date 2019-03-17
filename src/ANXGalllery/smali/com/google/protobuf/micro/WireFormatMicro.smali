.class public final Lcom/google/protobuf/micro/WireFormatMicro;
.super Ljava/lang/Object;
.source "WireFormatMicro.java"


# static fields
.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID_TAG:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 80
    invoke-static {v1, v3}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/WireFormatMicro;->MESSAGE_SET_ITEM_TAG:I

    .line 81
    const/4 v0, 0x4

    .line 82
    invoke-static {v1, v0}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/WireFormatMicro;->MESSAGE_SET_ITEM_END_TAG:I

    .line 83
    const/4 v0, 0x0

    .line 84
    invoke-static {v2, v0}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/WireFormatMicro;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 86
    invoke-static {v3, v2}, Lcom/google/protobuf/micro/WireFormatMicro;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/micro/WireFormatMicro;->MESSAGE_SET_MESSAGE_TAG:I

    .line 85
    return-void
.end method

.method public static getTagFieldNumber(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 65
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1
    .param p0, "tag"    # I

    .prologue
    .line 60
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "wireType"    # I

    .prologue
    .line 70
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
