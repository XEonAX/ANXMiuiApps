.class public Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;
.super Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$h;
.source "KMIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$h",
        "<",
        "Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;)V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$h;-><init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;)V

    .line 539
    return-void
.end method


# virtual methods
.method public a(FFFFFFFF)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p1, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropStartLeft:F

    .line 548
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p2, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropStartTop:F

    .line 549
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p3, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropStartRight:F

    .line 550
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p4, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropStartBottom:F

    .line 551
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p5, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropEndLeft:F

    .line 552
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p6, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropEndTop:F

    .line 553
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p7, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropEndRight:F

    .line 554
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p8, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropEndBottom:F

    .line 555
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput-object p1, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->path:Ljava/lang/String;

    .line 543
    return-object p0
.end method

.method public a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    return-object v0
.end method
