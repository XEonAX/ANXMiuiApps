.class Lmiui/imagefilters/BlendImageFilter$30;
.super Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;
.source "BlendImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/imagefilters/BlendImageFilter;->getCurrentPorterDuffBlender()Lmiui/imagefilters/BlendImageFilter$PorterDuffBlender;
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

    .line 585
    iput-object p1, p0, Lmiui/imagefilters/BlendImageFilter$30;->this$0:Lmiui/imagefilters/BlendImageFilter;

    invoke-direct {p0, p1}, Lmiui/imagefilters/BlendImageFilter$PorterDuffBlenderPerChannel;-><init>(Lmiui/imagefilters/BlendImageFilter;)V

    return-void
.end method


# virtual methods
.method public blendAlpha(FF)F
    .locals 1
    .param p1, "Da"    # F
    .param p2, "Sa"    # F

    .line 587
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p1

    return v0
.end method

.method public blendChannel(FFFF)F
    .locals 1
    .param p1, "Dc"    # F
    .param p2, "Sc"    # F
    .param p3, "Da"    # F
    .param p4, "Sa"    # F

    .line 591
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p4

    mul-float/2addr v0, p1

    return v0
.end method
