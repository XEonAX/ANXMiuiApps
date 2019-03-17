.class public interface abstract Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IMenuFragment;
.super Ljava/lang/Object;
.source "IVideoEditorListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMenuFragment"
.end annotation


# virtual methods
.method public abstract doCancel()Z
.end method

.method public abstract getCurrentEffect()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEffectId()I
.end method
