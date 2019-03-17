.class Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;
.super Ljava/lang/Object;
.source "nexTemplateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->internalApplyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexClip;

.field final synthetic b:I

.field final synthetic c:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;


# direct methods
.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;Lcom/nexstreaming/nexeditorsdk/nexClip;I)V
    .locals 0

    .prologue
    .line 634
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;->c:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    iput-object p2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;->c:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;->a:Lcom/nexstreaming/nexeditorsdk/nexClip;

    iget v2, p0, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$2;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->getFirstFace(Lcom/nexstreaming/nexeditorsdk/nexClip;I)V

    .line 640
    return-void
.end method
