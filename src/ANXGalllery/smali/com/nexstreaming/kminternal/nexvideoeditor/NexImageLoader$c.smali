.class public Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;
.super Ljava/lang/Object;
.source "NexImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1217
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->a:I

    .line 1218
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->b:I

    .line 1219
    const/4 v0, 0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->c:I

    .line 1220
    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .prologue
    .line 1211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1212
    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->a:I

    .line 1213
    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->b:I

    .line 1214
    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->c:I

    .line 1215
    return-void
.end method

.method synthetic constructor <init>(IIILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;-><init>(III)V

    return-void
.end method

.method synthetic constructor <init>(IILcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$1;)V
    .locals 0

    .prologue
    .line 1206
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1222
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 1225
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1228
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexImageLoader$c;->c:I

    return v0
.end method
