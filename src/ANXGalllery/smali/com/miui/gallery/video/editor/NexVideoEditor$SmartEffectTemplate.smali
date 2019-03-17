.class Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;
.super Ljava/lang/Object;
.source "NexVideoEditor.java"

# interfaces
.implements Lcom/miui/gallery/video/editor/NexVideoEditor$Change;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/NexVideoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmartEffectTemplate"
.end annotation


# instance fields
.field private mLimitTime:I

.field private template:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

.field final synthetic this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/miui/gallery/video/editor/SmartEffect;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/video/editor/NexVideoEditor;
    .param p2, "smartEffect"    # Lcom/miui/gallery/video/editor/SmartEffect;

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1745
    if-eqz p2, :cond_0

    .line 1746
    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/SmartEffect;->getTemplate()Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->template:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    .line 1747
    invoke-virtual {p2}, Lcom/miui/gallery/video/editor/SmartEffect;->getLongTime()I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->mLimitTime:I

    .line 1749
    :cond_0
    return-void
.end method

.method private checkTemplate()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1752
    const-string v4, ""

    .line 1753
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalTime()I

    move-result v6

    if-gtz v6, :cond_0

    .line 1754
    const-string v4, "Project is empty"

    move-object v5, v4

    .line 1784
    .end local v4    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1757
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->template:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    if-nez v6, :cond_1

    .line 1758
    const-string v4, "Template did not selected"

    move-object v5, v4

    .line 1759
    .end local v4    # "str":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/String;
    goto :goto_0

    .line 1761
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1762
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->allClear(Z)V

    .line 1764
    :cond_2
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v7

    invoke-static {v7}, Lcom/nexstreaming/nexeditorsdk/nexProject;->clone(Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2702(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 1765
    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->mLimitTime:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->mLimitTime:I

    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-virtual {v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->getVideoTotalTime()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 1766
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getTotalClipCount(Z)I

    move-result v1

    .line 1767
    .local v1, "clipCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1768
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Lcom/nexstreaming/nexeditorsdk/nexProject;->getClip(IZ)Lcom/nexstreaming/nexeditorsdk/nexClip;

    move-result-object v0

    .line 1769
    .local v0, "clip":Lcom/nexstreaming/nexeditorsdk/nexClip;
    invoke-virtual {v0}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getVideoClipEdit()Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;

    move-result-object v6

    const/4 v7, 0x0

    iget v8, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->mLimitTime:I

    invoke-virtual {v6, v7, v8}, Lcom/nexstreaming/nexeditorsdk/nexVideoClipEdit;->setTrim(II)V

    .line 1767
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1772
    .end local v0    # "clip":Lcom/nexstreaming/nexeditorsdk/nexClip;
    .end local v1    # "clipCount":I
    .end local v3    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v6}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 1775
    :try_start_0
    invoke-static {}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getInstance()Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/gallery/video/editor/manager/NexAssetTemplateManager;->getKmTemplateManager()Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v7}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2700(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v7

    iget-object v8, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->template:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    invoke-virtual {v8}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;->id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/nexstreaming/nexeditorsdk/nexTemplateManager;->applyTemplateToProjectById(Lcom/nexstreaming/nexeditorsdk/nexProject;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1776
    const-string v4, "Fail to apply template on project"
    :try_end_0
    .catch Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1783
    :cond_4
    :goto_2
    const-string v6, "NexVideoEditor"

    const-string v7, "check template info : %s "

    invoke-static {v6, v7, v4}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v5, v4

    .line 1784
    .end local v4    # "str":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/String;
    goto/16 :goto_0

    .line 1778
    .end local v5    # "str":Ljava/lang/String;
    .restart local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1779
    .local v2, "e":Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
    const-string v4, "This is expired asset!"

    .line 1782
    goto :goto_2

    .line 1780
    .end local v2    # "e":Lcom/nexstreaming/nexeditorsdk/exception/ExpiredTimeException;
    :catch_1
    move-exception v2

    .line 1781
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private delete()V
    .locals 2

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2602(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)Z

    .line 1802
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "edit_type_smart_effect_template"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1803
    return-void
.end method


# virtual methods
.method public applyChange()V
    .locals 2

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->template:Lcom/nexstreaming/nexeditorsdk/nexTemplateManager$Template;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->checkTemplate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1790
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->delete()V

    .line 1791
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1600(Lcom/miui/gallery/video/editor/NexVideoEditor;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "edit_type_smart_effect_template"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1792
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2602(Lcom/miui/gallery/video/editor/NexVideoEditor;Z)Z

    .line 1798
    :goto_0
    return-void

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$2702(Lcom/miui/gallery/video/editor/NexVideoEditor;Lcom/nexstreaming/nexeditorsdk/nexProject;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    .line 1795
    iget-object v0, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$200(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->this$0:Lcom/miui/gallery/video/editor/NexVideoEditor;

    invoke-static {v1}, Lcom/miui/gallery/video/editor/NexVideoEditor;->access$1500(Lcom/miui/gallery/video/editor/NexVideoEditor;)Lcom/nexstreaming/nexeditorsdk/nexProject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEngine;->setProject(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    .line 1796
    invoke-direct {p0}, Lcom/miui/gallery/video/editor/NexVideoEditor$SmartEffectTemplate;->delete()V

    goto :goto_0
.end method
