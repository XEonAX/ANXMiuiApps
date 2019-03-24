.class Lmiui/imagefilters/BlendImageFilter$19;
.super Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentBlender()Lmiui/imagefilters/BlendImageFilter$Blender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/imagefilters/BlendImageFilter;


# direct methods
.method constructor <init>(Lmiui/imagefilters/BlendImageFilter;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/imagefilters/BlendImageFilter;

    .line 447
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$19;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$BlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendChannel(FF)F
    .locals 2
    .param p1, "a"    # F
    .param p2, "b"    # F

    .line 449
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 450
    const/4 v0, 0x0

    return v0

    .line 452
    :cond_0
    return v0
.end method
