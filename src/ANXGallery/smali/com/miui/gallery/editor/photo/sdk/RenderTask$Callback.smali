.class public interface abstract Lcom/miui/gallery/editor/photo/sdk/RenderTask$Callback;
.super Ljava/lang/Object;
.source "RenderTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/sdk/RenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onItemFinish(Landroid/net/Uri;Landroid/net/Uri;)V
.end method

.method public abstract onTaskCancelled()V
.end method

.method public abstract onTaskError()V
.end method

.method public abstract onTaskFinish()V
.end method
