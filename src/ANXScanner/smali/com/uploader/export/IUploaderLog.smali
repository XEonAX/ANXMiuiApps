.class public interface abstract Lcom/uploader/export/IUploaderLog;
.super Ljava/lang/Object;
.source "IUploaderLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uploader/export/IUploaderLog$Definition;
    }
.end annotation


# static fields
.field public static final D:I = 0x2

.field public static final E:I = 0x10

.field public static final I:I = 0x4

.field public static final V:I = 0x1

.field public static final W:I = 0x8


# virtual methods
.method public abstract isEnabled(I)Z
.end method

.method public abstract print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
.end method
