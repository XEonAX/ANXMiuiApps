.class public final Lmiui/yellowpage/YellowPageContract$HttpRequest;
.super Ljava/lang/Object;
.source "YellowPageContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/yellowpage/YellowPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HttpRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageContract$HttpRequest$Helper;
    }
.end annotation


# static fields
.field public static final CONTENT:Ljava/lang/String; = "content"

.field public static final PARAMS:Ljava/lang/String; = "params"

.field public static final PARAM_INVOKE_REQUEST_LOCAL:Ljava/lang/String; = "invoke_request_local"

.field public static final PARAM_INVOKE_REQUEST_SERVER:Ljava/lang/String; = "invoke_request_server"

.field public static final PARAM_METHOD:Ljava/lang/String; = "method"

.field public static final PARAM_SET_ATTACH_LOCATION:Ljava/lang/String; = "set_attach_location"

.field public static final PARAM_SET_ATTACH_USER_INFO:Ljava/lang/String; = "set_attach_user_info"

.field public static final PARAM_SET_REQUEST_CACHE:Ljava/lang/String; = "set_request_cache"

.field public static final PARAM_SET_REQUEST_SERVER:Ljava/lang/String; = "set_request_server"

.field public static final PARAM_SET_REQUEST_YELLOWPAGE:Ljava/lang/String; = "set_request_yellowpage"

.field public static final PARAM_URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
