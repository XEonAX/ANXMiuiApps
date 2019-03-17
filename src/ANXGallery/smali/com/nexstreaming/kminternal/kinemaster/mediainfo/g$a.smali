.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$a;
.super Ljava/lang/Object;
.source "ThumbnailParser.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;)I
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;->a()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 291
    check-cast p1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;

    check-cast p2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;

    invoke-virtual {p0, p1, p2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$a;->a(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g$b;)I

    move-result v0

    return v0
.end method
