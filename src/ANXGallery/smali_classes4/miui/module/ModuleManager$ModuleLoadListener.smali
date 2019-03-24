.class public interface abstract Lmiui/module/ModuleManager$ModuleLoadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/module/ModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ModuleLoadListener"
.end annotation


# static fields
.field public static final FETCH_ERROR:I = 0x1

.field public static final IO_ERROR:I = 0x2

.field public static final LOAD_ERROR:I = 0x3


# virtual methods
.method public abstract onLoadFail(Ljava/lang/String;I)V
.end method

.method public abstract onLoadFinish()V
.end method

.method public abstract onLoadSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
