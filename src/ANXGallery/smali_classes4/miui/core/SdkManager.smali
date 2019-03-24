.class public abstract Lmiui/core/SdkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final RETURN_CODE_LOW_SDK_VERSION:I = 0x1

.field public static final RETURN_CODE_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "miuisdk"

.field private static final xK:Ljava/lang/String; = "com.miui.internal.server.CoreService"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static a(Landroid/app/Application;Lmiui/core/Manifest;)V
    .locals 1

    .line 215
    new-instance v0, Lcom/miui/internal/component/ComponentManager;

    invoke-direct {v0, p0, p1}, Lcom/miui/internal/component/ComponentManager;-><init>(Landroid/app/Application;Lmiui/core/Manifest;)V

    .line 216
    invoke-virtual {v0}, Lcom/miui/internal/component/ComponentManager;->load()V

    .line 217
    return-void
.end method

.method private static a(Landroid/content/Context;Lmiui/core/Manifest;)Z
    .locals 1

    .line 210
    new-instance v0, Lmiui/core/CompatibleManager;

    invoke-direct {v0, p0, p1}, Lmiui/core/CompatibleManager;-><init>(Landroid/content/Context;Lmiui/core/Manifest;)V

    .line 211
    invoke-virtual {v0}, Lmiui/core/CompatibleManager;->isCompatible()Z

    move-result p0

    return p0
.end method

.method private static buildProxy()V
    .locals 2

    .line 144
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_Resources_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_Resources_class;->buildProxy()V

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_0

    .line 146
    invoke-static {}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class$Factory;->get()Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Content_Res_ResourcesImpl_class;->buildProxy()V

    .line 149
    :cond_0
    invoke-static {}, Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class$Factory;->get()Lcom/miui/internal/variable/Android_App_AlertDialog_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_class;->buildProxy()V

    .line 150
    invoke-static {}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class$Factory;->get()Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_AlertDialog_Builder_class;->buildProxy()V

    .line 151
    invoke-static {}, Lcom/miui/internal/variable/Android_App_Activity_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_App_Activity_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_Activity_class$Factory;->get()Lcom/miui/internal/variable/Android_App_Activity_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_App_Activity_class;->buildProxy()V

    .line 153
    invoke-static {}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_View_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class$Factory;->get()Lcom/miui/internal/variable/Android_View_View_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_View_class;->buildProxy()V

    .line 154
    invoke-static {}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class$Factory;->get()Lcom/miui/internal/variable/Android_View_ViewGroup_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_View_ViewGroup_class;->buildProxy()V

    .line 156
    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_Preference_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_Preference_class;->buildProxy()V

    .line 157
    invoke-static {}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class$Factory;->get()Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Preference_EditTextPreference_class;->buildProxy()V

    .line 159
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_RemoteViews_class;->buildProxy()V

    .line 160
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_ListView_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListView_class;->buildProxy()V

    .line 161
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_GridView_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_GridView_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_GridView_class;->buildProxy()V

    .line 162
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_ListPopupWindow_class;->buildProxy()V

    .line 163
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSpinner_class;->buildProxy()V

    .line 164
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_Spinner_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_Spinner_class;->buildProxy()V

    .line 165
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_PopupWindow_class;->buildProxy()V

    .line 166
    invoke-static {}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class$Factory;->get()Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Widget_AbsSeekBar_class;->buildProxy()V

    .line 168
    invoke-static {}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;->getInstance()Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class$Factory;->get()Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Android_Text_Util_Linkify_class;->buildProxy()V

    .line 170
    invoke-static {}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;->getInstance()Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class$Factory;->get()Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/variable/Internal_Policy_Impl_PhoneWindow_class;->buildProxy()V

    .line 171
    return-void
.end method

.method private static cd()I
    .locals 8

    .line 71
    invoke-static {}, Lcom/miui/internal/util/DeviceHelper;->getDebugEnable()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 73
    return v2

    .line 75
    :cond_0
    const-string v1, "\\,"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 77
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 79
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 80
    nop

    .line 81
    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    .line 82
    nop

    .line 85
    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-nez v6, :cond_2

    invoke-static {}, Lcom/miui/internal/util/ClassProxy;->getProcName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 86
    :cond_2
    aget-object v4, v4, v7

    .line 87
    const-string v5, "all"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 88
    const-string v4, "all"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 89
    invoke-static {v4}, Lcom/miui/internal/util/ClassProxy;->setDebugModules([Ljava/lang/String;)V

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 92
    invoke-static {v4}, Lcom/miui/internal/util/ClassProxy;->setDebugModules([Ljava/lang/String;)V

    .line 76
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_5
    return v2
.end method

.method public static initialize(Landroid/app/Application;Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 109
    const-class p1, Lmiui/core/SdkManager;

    monitor-enter p1

    .line 110
    :try_start_0
    invoke-static {}, Lmiui/core/SdkManager;->cd()I

    .line 112
    sput-object p0, Lcom/miui/internal/util/PackageConstants;->sInitializingApplication:Landroid/app/Application;

    .line 114
    sget p0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p0, v0, :cond_0

    .line 115
    const-string p0, "miuisdk"

    const-string v0, "sdk already initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit p1

    return v1

    .line 119
    :cond_0
    invoke-static {}, Lcom/miui/internal/util/PackageHelper;->isMiuiSystem()Z

    move-result p0

    if-nez p0, :cond_1

    .line 120
    invoke-static {}, Lcom/miui/internal/util/ClassProxy;->setupResourceHook()V

    .line 121
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    sget-object v2, Lcom/miui/internal/util/PackageConstants;->RESOURCE_PATH:Ljava/lang/String;

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/miui/internal/component/module/ModuleLoader;->loadResources([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_1
    nop

    .line 126
    :try_start_1
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "com/miui/internal/variable/v%d/%s\n.Android_Content_Res_Resources_class\nv16\nloadDrawable\n(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;\nv21\nloadDrawable\n(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;\nv24\n.Android_Content_Res_ResourcesImpl_class\nv24\nloadDrawable\n(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;\nv26\nloadDrawable\n(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;\n.Android_App_AlertDialog_class\nv16\n<init>\n(Landroid/content/Context;IZ)V\n<init>\n(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V\n.Android_App_AlertDialog_Builder_class|Landroid/app/AlertDialog$Builder;\nv16\n<init>\n(Landroid/content/Context;I)V\n.Android_App_Activity_class\nv16\nsetProgressBarVisibility\n(Z)V\nsetProgressBarIndeterminateVisibility\n(Z)V\nsetProgressBarIndeterminate\n(Z)V\nsetProgress\n(I)V\n.Android_View_View_class\nv16\nrefreshDrawableState\n()V\nonCreateDrawableState\n(I)[I\ncreateContextMenu\n(Landroid/view/ContextMenu;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nsetDisplayListProperties\n(Landroid/view/DisplayList;)V\nv21\nrefreshDrawableState\n()V\nonCreateDrawableState\n(I)[I\ncreateContextMenu\n(Landroid/view/ContextMenu;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nsetDisplayListProperties\n(Landroid/view/RenderNode;)V\n.Android_View_ViewGroup_class\nv16\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nv19\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;)V\nv21\naddInArray\n(Landroid/view/View;I)V\nremoveFromArray\n(I)V\nremoveFromArray\n(II)V\nonChildVisibilityChanged\n(Landroid/view/View;II)V\nresolveLayoutDirection\n()Z\ninitFromAttributes\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n.Android_Preference_Preference_class\nv16\nonBindView\n(Landroid/view/View;)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\n.Android_Preference_EditTextPreference_class\nv0\nonAddEditTextToDialogView\n(Landroid/view/View;Landroid/widget/EditText;)V\n.Android_Widget_RemoteViews_class\nv16\nprepareContext\n(Landroid/content/Context;)Landroid/content/Context;\nv21\ngetContextForResources\n(Landroid/content/Context;)Landroid/content/Context;\n.Android_Widget_ListView_class\nv16\nlayoutChildren\n()V\nfillGap\n(Z)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;I)V\nv21\nlayoutChildren\n()V\nfillGap\n(Z)V\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\n.Android_Widget_GridView_class\nv16\nlayoutChildren\n()V\nfillGap\n(Z)V\n.Android_Widget_ListPopupWindow_class\nv16\n<init>\n(Landroid/content/Context;Landroid/util/AttributeSet;II)V\nshow\n()V\n.Android_Widget_AbsSpinner_class\nv16\nsetAdapter\n(Landroid/widget/SpinnerAdapter;)V\n.Android_Widget_Spinner_class\nv16\nsetPrompt\n(Ljava/lang/CharSequence;)V\n.Android_Widget_PopupWindow_class\nv21\ninvokePopup\n(Landroid/view/WindowManager$LayoutParams;)V\nv23\ninvokePopup\n(Landroid/view/WindowManager$LayoutParams;)V\n.Android_Widget_AbsSeekBar_class\nv16\nonTouchEvent\n(Landroid/view/MotionEvent;)Z\n.Android_Text_Util_Linkify_class\nv16\ngatherLinks\n(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V\naddLinks\n(Landroid/text/Spannable;I)Z\nv19\ngatherLinks\n(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V\naddLinks\n(Landroid/text/Spannable;I)Z\nv27\ngatherLinks\n(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V\naddLinks\n(Landroid/text/Spannable;I)Z\n.Internal_Policy_Impl_PhoneWindow_class|Lcom/android/internal/policy/PhoneWindow;\nv16\ninstallDecor\n()V\n.Android_App_ResourcesManager_class\nv24\ncreateResourcesImpl\n(Landroid/content/res/ResourcesKey;)Landroid/content/res/ResourcesImpl;\n"

    invoke-static {p0, v2}, Lcom/miui/internal/util/ClassProxy;->setupClassHook(ILjava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    :try_start_2
    const-string v2, "miuisdk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup class hook enconter errors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    move p0, v1

    :goto_0
    if-nez p0, :cond_2

    .line 131
    invoke-static {}, Lmiui/core/SdkManager;->buildProxy()V

    .line 134
    :cond_2
    invoke-static {}, Lcom/miui/internal/util/ClassProxy;->setupInterpreterHook()Z

    .line 136
    sget p0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge p0, v0, :cond_3

    .line 137
    sput v0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    .line 139
    :cond_3
    monitor-exit p1

    return v1

    .line 140
    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static m(Landroid/content/Context;)V
    .locals 2

    .line 220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmiui/core/SdkManager$1;

    invoke-direct {v1, p0}, Lmiui/core/SdkManager$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    return-void
.end method

.method public static start(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 182
    const-class v0, Lmiui/core/SdkManager;

    monitor-enter v0

    .line 183
    :try_start_0
    sget v1, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 184
    const-string v1, "miuisdk"

    const-string v3, "sdk already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    sget-object v1, Lcom/miui/internal/util/PackageConstants;->sInitializingApplication:Landroid/app/Application;

    .line 188
    sput-object v1, Lcom/miui/internal/util/PackageConstants;->sApplication:Landroid/app/Application;

    .line 189
    invoke-static {v1}, Lmiui/core/ManifestParser;->create(Landroid/content/Context;)Lmiui/core/ManifestParser;

    move-result-object v3

    invoke-virtual {v3, p0}, Lmiui/core/ManifestParser;->parse(Ljava/util/Map;)Lmiui/core/Manifest;

    move-result-object p0

    .line 191
    instance-of v3, v1, Lcom/miui/internal/app/MiuiApplication;

    if-nez v3, :cond_1

    .line 192
    invoke-static {v1, p0}, Lmiui/core/SdkManager;->a(Landroid/content/Context;Lmiui/core/Manifest;)Z

    move-result v3

    .line 193
    if-nez v3, :cond_1

    .line 194
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    .line 198
    :cond_1
    const-string v3, "android"

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    invoke-static {v1, p0}, Lmiui/core/SdkManager;->a(Landroid/app/Application;Lmiui/core/Manifest;)V

    .line 202
    :cond_2
    sget p0, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    if-ge p0, v2, :cond_3

    .line 203
    sput v2, Lcom/miui/internal/util/PackageConstants;->sSdkStatus:I

    .line 205
    :cond_3
    const/4 p0, 0x0

    monitor-exit v0

    return p0

    .line 206
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static supportUpdate(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 237
    const/4 p0, 0x0

    return p0
.end method

.method public static update(Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 247
    const/4 p0, 0x0

    return p0
.end method
