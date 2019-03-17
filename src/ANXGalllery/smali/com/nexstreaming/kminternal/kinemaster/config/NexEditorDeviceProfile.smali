.class public Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;
.super Ljava/lang/Object;
.source "NexEditorDeviceProfile.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$b;,
        Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$a;,
        Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;,
        Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;
    }
.end annotation


# static fields
.field public static final UNKNOWN:I = -0x80000000

.field private static a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile; = null

.field private static final b:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$b;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final MAX_SUPPORTED_FPS:I

.field private final MEM_1080P_SIZE:I

.field private final MEM_720P_SIZE:I

.field private final MEM_UHD_SIZE:I

.field private final mBoardPlatform:Ljava/lang/String;

.field private final m_MCHWAVCDecBaselineSize:I

.field private final m_MCHWAVCDecHighSize:I

.field private final m_MCHWAVCDecMainSize:I

.field private final m_MCSWAVCDecBaselineSize:I

.field private final m_MCSWAVCDecHighSize:I

.field private final m_MCSWAVCDecMainSize:I

.field private final m_NXSWAVCDecBaselineSize:I

.field private final m_NXSWAVCDecHighSize:I

.field private final m_NXSWAVCDecMainSize:I

.field private m_actualSupportedExportProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field private m_actualSupportedExportProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field private final m_audioCodecCount:I

.field private m_bSetUserConfig:Z

.field private final m_deviceMaxGamma:I

.field private final m_deviceMaxLightLevel:I

.field private final m_dsr:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;

.field private final m_enableProjectProtection:Z

.field private final m_exportExtraProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field private final m_exportExtraProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field private final m_exportProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field private final m_exportProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field private m_extraDurationForSplit:I

.field private final m_forceDirectExport:I

.field private m_fullHDMaxTransitionTime:I

.field private final m_glDepthBufferBits:I

.field private final m_glMultisample:Z

.field private final m_hardwareCodecMemSize:I

.field private final m_hardwareDecMaxCount:I

.field private final m_hardwareEncMaxCount:I

.field private final m_imageRecording:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

.field private final m_limitTextInputHeight:Z

.field private final m_matchInfo:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$a;

.field private m_maxCamcorderProfileSizeForUnknownDevice:I

.field private final m_maxImportHWSize:I

.field private final m_maxImportSWSize:I

.field private m_maxSupportedFPS:I

.field private m_maxSupportedResolution:I

.field private final m_nativeLogLevel:I

.field private final m_needSeekBeforeFastPreview:Z

.field private final m_profileSource:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;

.field private final m_properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final m_support:Z

.field private final m_supportAVC:Z

.field private final m_supportIfUpgradeVersion:I

.field private final m_supportMPEGV4:Z

.field private final m_supportedTimeCheker:I

.field private m_transcodeProfile:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

.field private final m_useEditorView:Z

.field private final m_useNativeMediaDB:Z

.field private final m_usedContext:Z

.field private final m_usedDSR:Z

.field private final m_videoRecording:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

.field private final m_visualMediaFromKineMasterFolderOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    .line 1154
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$b;

    const/16 v1, 0x780

    const/16 v2, 0x440

    invoke-direct {v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$b;-><init>(II)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->b:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;[I)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v6, 0x0

    const/high16 v5, -0x80000000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const v0, 0x7f8000

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->MEM_UHD_SIZE:I

    .line 33
    const v0, 0x1fe000

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->MEM_1080P_SIZE:I

    .line 34
    const v0, 0xe1000

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->MEM_720P_SIZE:I

    .line 35
    const/16 v0, 0x78

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->MAX_SUPPORTED_FPS:I

    .line 87
    iput v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_extraDurationForSplit:I

    .line 88
    const v0, 0x205800

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxCamcorderProfileSizeForUnknownDevice:I

    .line 114
    iput-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_actualSupportedExportProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 115
    iput-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_actualSupportedExportProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 1159
    iput-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_transcodeProfile:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 375
    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_usedContext:Z

    .line 377
    if-eqz p2, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_usedDSR:Z

    .line 379
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Building device profile : hasContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_usedContext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Lcom/nexstreaming/app/common/util/o;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->mBoardPlatform:Ljava/lang/String;

    .line 457
    if-eqz p2, :cond_0

    .line 518
    :cond_0
    iput-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_dsr:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;

    .line 722
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->UseKineMaster:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_videoRecording:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    .line 723
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;->UseNative:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_imageRecording:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    .line 726
    iput v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportIfUpgradeVersion:I

    .line 727
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_useNativeMediaDB:Z

    .line 728
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_needSeekBeforeFastPreview:Z

    .line 729
    iput-boolean v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_limitTextInputHeight:Z

    .line 730
    const/16 v0, 0x10

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_glDepthBufferBits:I

    .line 731
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_glMultisample:Z

    .line 732
    iput-boolean v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_useEditorView:Z

    .line 733
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportAVC:Z

    .line 734
    iput-boolean v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_support:Z

    .line 736
    const/4 v0, -0x1

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_audioCodecCount:I

    .line 737
    iput-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_matchInfo:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$a;

    .line 739
    if-nez p3, :cond_4

    .line 740
    iput-boolean v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_bSetUserConfig:Z

    .line 744
    :goto_2
    if-nez p3, :cond_6

    .line 745
    const v0, 0x7f8000

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareCodecMemSize:I

    .line 749
    :goto_3
    if-nez p3, :cond_7

    .line 750
    iput v11, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareDecMaxCount:I

    .line 754
    :goto_4
    if-nez p3, :cond_8

    .line 755
    const/16 v0, 0x78

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxSupportedFPS:I

    .line 759
    :goto_5
    if-nez p3, :cond_9

    .line 760
    iput-boolean v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportMPEGV4:Z

    .line 764
    :goto_6
    if-nez p3, :cond_b

    .line 765
    const v0, 0x7f8000

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxSupportedResolution:I

    .line 769
    :goto_7
    if-nez p3, :cond_c

    .line 770
    iput v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_forceDirectExport:I

    .line 774
    :goto_8
    if-nez p3, :cond_d

    .line 775
    iput v11, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_nativeLogLevel:I

    .line 779
    :goto_9
    if-nez p3, :cond_e

    .line 780
    iput v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportedTimeCheker:I

    .line 784
    :goto_a
    if-nez p3, :cond_f

    .line 785
    const/16 v0, 0x226

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_deviceMaxLightLevel:I

    .line 789
    :goto_b
    if-nez p3, :cond_10

    .line 790
    const/16 v0, 0x226

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_deviceMaxGamma:I

    .line 794
    :goto_c
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set supportMPEGV4 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportMPEGV4:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set hardwareDecMaxCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareDecMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set maxSupportedFPS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxSupportedFPS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set hardwareCodecMemSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareCodecMemSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set maxSupportedResolution = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxSupportedResolution:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set forceDirectExport = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_forceDirectExport:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set m_nativeLogLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_nativeLogLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set m_supportedTimeCheker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportedTimeCheker:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v0, "NexEditorDeviceProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User set device LightLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_deviceMaxLightLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Gamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_deviceMaxGamma:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iput v1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareEncMaxCount:I

    .line 805
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxImportSWSize:I

    .line 806
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxImportHWSize:I

    .line 808
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_NXSWAVCDecBaselineSize:I

    .line 809
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_NXSWAVCDecMainSize:I

    .line 810
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_NXSWAVCDecHighSize:I

    .line 812
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCSWAVCDecBaselineSize:I

    .line 813
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCSWAVCDecMainSize:I

    .line 814
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCSWAVCDecHighSize:I

    .line 816
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCHWAVCDecBaselineSize:I

    .line 817
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCHWAVCDecMainSize:I

    .line 818
    iput v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCHWAVCDecHighSize:I

    .line 820
    iput-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_exportProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 821
    iput-object v6, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_exportProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 823
    const v0, 0x7fffffff

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_fullHDMaxTransitionTime:I

    .line 825
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;->Unknown:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_profileSource:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;

    .line 827
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    .line 829
    const-string v0, "Xiaomi"

    const-string v3, "Xiaomi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 830
    const/4 v0, 0x6

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    move v0, v2

    move v3, v2

    .line 832
    :goto_d
    array-length v5, v4

    if-ge v0, v5, :cond_12

    .line 834
    aget v5, v4, v0

    invoke-static {v5}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 836
    aget v5, v4, v0

    invoke-static {v5}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v5

    .line 837
    if-nez v5, :cond_11

    .line 832
    :cond_1
    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2
    move v0, v2

    .line 375
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 377
    goto/16 :goto_1

    .line 742
    :cond_4
    aget v0, p3, v2

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_f
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_bSetUserConfig:Z

    goto/16 :goto_2

    :cond_5
    move v0, v2

    goto :goto_f

    .line 747
    :cond_6
    aget v0, p3, v1

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareCodecMemSize:I

    goto/16 :goto_3

    .line 752
    :cond_7
    aget v0, p3, v11

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareDecMaxCount:I

    goto/16 :goto_4

    .line 757
    :cond_8
    const/4 v0, 0x3

    aget v0, p3, v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxSupportedFPS:I

    goto/16 :goto_5

    .line 762
    :cond_9
    const/4 v0, 0x4

    aget v0, p3, v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_10
    iput-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportMPEGV4:Z

    goto/16 :goto_6

    :cond_a
    move v0, v1

    goto :goto_10

    .line 767
    :cond_b
    const/4 v0, 0x5

    aget v0, p3, v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxSupportedResolution:I

    goto/16 :goto_7

    .line 772
    :cond_c
    const/4 v0, 0x6

    aget v0, p3, v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_forceDirectExport:I

    goto/16 :goto_8

    .line 777
    :cond_d
    const/4 v0, 0x7

    aget v0, p3, v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_nativeLogLevel:I

    goto/16 :goto_9

    .line 782
    :cond_e
    const/16 v0, 0x8

    aget v0, p3, v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportedTimeCheker:I

    goto/16 :goto_a

    .line 787
    :cond_f
    const/16 v0, 0x9

    aget v0, p3, v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_deviceMaxLightLevel:I

    goto/16 :goto_b

    .line 792
    :cond_10
    const/16 v0, 0xa

    aget v0, p3, v0

    iput v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_deviceMaxGamma:I

    goto/16 :goto_c

    .line 839
    :cond_11
    iget v6, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    add-int/lit8 v6, v6, 0x1f

    and-int/lit8 v6, v6, -0x10

    .line 840
    iget v7, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v7, v6

    if-le v7, v3, :cond_1

    .line 841
    iget v3, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    mul-int/2addr v3, v6

    .line 842
    const-string v7, "NexEditorDeviceProfile"

    const-string v8, "bestCamcorderProfileSize(%d), Width(%d), Height(%d/%d), Project=[%s]"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    iget v10, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v11

    const/4 v5, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v5, 0x4

    const-string v6, "Xiaomi"

    aput-object v6, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 846
    :cond_12
    iput v3, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxCamcorderProfileSizeForUnknownDevice:I

    .line 848
    :cond_13
    new-array v0, v1, [Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    sget-object v3, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_320_180:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_exportExtraProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 849
    new-array v0, v1, [Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->EXPORT_320_180:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_exportExtraProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 850
    iput-boolean v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_enableProjectProtection:Z

    .line 851
    iput-boolean v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_visualMediaFromKineMasterFolderOnly:Z

    .line 852
    return-void

    .line 830
    :array_0
    .array-data 4
        0x1
        0x6
        0x5
        0x4
        0x3
        0x7
    .end array-data
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 886
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    .line 887
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    .line 888
    if-nez v1, :cond_1

    .line 889
    iget p1, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxCamcorderProfileSizeForUnknownDevice:I

    .line 904
    :cond_0
    :goto_0
    return p1

    .line 890
    :cond_1
    if-eqz p2, :cond_2

    .line 891
    invoke-virtual {v1, p2, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    move p1, v0

    .line 892
    goto :goto_0

    .line 895
    :cond_2
    if-eqz p3, :cond_4

    .line 896
    iget v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxCamcorderProfileSizeForUnknownDevice:I

    if-gtz v2, :cond_3

    .line 897
    invoke-virtual {v1, p3, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 899
    :cond_3
    iget v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxCamcorderProfileSizeForUnknownDevice:I

    invoke-virtual {v1, p3, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v0

    .line 902
    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 339
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;Z)[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
    .locals 9

    .prologue
    .line 1023
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1024
    invoke-virtual {p0, p2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxImportSize(Z)I

    move-result v4

    .line 1026
    const/4 v1, 0x0

    .line 1028
    array-length v5, p1

    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v1, p1, v2

    .line 1029
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->width()I

    move-result v6

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v7

    add-int/lit8 v7, v7, -0x1f

    mul-int/2addr v6, v7

    if-gt v6, v4, :cond_1

    .line 1030
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1031
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->width()I

    move-result v6

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->width()I

    move-result v7

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v8

    mul-int/2addr v7, v8

    if-le v6, v7, :cond_0

    :cond_2
    move-object v0, v1

    .line 1032
    goto :goto_1

    .line 1036
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_4

    if-eqz v0, :cond_4

    .line 1037
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    return-object v0
.end method

.method static synthetic access$000(Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getDeviceProfile()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    invoke-direct {v0, v1, v1, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;-><init>(Landroid/content/Context;Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;[I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    .line 136
    :cond_0
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    return-object v0
.end method

.method public static setAppContext(Landroid/content/Context;[I)V
    .locals 3

    .prologue
    .line 122
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    iget-boolean v0, v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_usedContext:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    iget-boolean v0, v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_usedDSR:Z

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;-><init>(Landroid/content/Context;Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;[I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    goto :goto_0
.end method

.method public static setDeviceSupportResponse(Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    iget-boolean v0, v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_usedDSR:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    invoke-direct {v0, v1, p0, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;-><init>(Landroid/content/Context;Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;[I)V

    sput-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;

    goto :goto_0
.end method


# virtual methods
.method public allowOverlappingVideo()Z
    .locals 2

    .prologue
    .line 1137
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getHardwareDecMaxCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAVCSupported()Z
    .locals 1

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportAVC:Z

    return v0
.end method

.method public getAudioCodecMaxCount()I
    .locals 2

    .prologue
    .line 1322
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_audioCodecCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1323
    const v0, 0x7fffffff

    .line 1327
    :goto_0
    return v0

    .line 1324
    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_audioCodecCount:I

    if-gez v0, :cond_1

    .line 1325
    const/4 v0, 0x0

    goto :goto_0

    .line 1327
    :cond_1
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_audioCodecCount:I

    goto :goto_0
.end method

.method public getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1294
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1295
    const/4 p2, 0x1

    .line 1301
    :cond_0
    :goto_0
    return p2

    .line 1296
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getDSR()Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_dsr:Lcom/nexstreaming/app/common/tracelog/DeviceSupportResponse;

    return-object v0
.end method

.method public getDefaultExportProfile(Z)Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 1054
    const/4 v0, 0x0

    .line 1056
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getSupportedExportProfiles(Z)[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    move-result-object v4

    .line 1059
    if-nez v0, :cond_5

    .line 1060
    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_5

    aget-object v1, v4, v2

    .line 1061
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v6

    const/16 v7, 0x2d0

    if-eq v6, v7, :cond_0

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v6

    const/16 v7, 0x2e0

    if-ne v6, v7, :cond_2

    .line 1069
    :cond_0
    :goto_1
    if-nez v1, :cond_4

    .line 1070
    array-length v5, v4

    move v2, v3

    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v0, v4, v2

    .line 1071
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v6

    const/16 v7, 0x438

    if-ne v6, v7, :cond_3

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v6

    const/16 v7, 0x440

    if-ne v6, v7, :cond_3

    .line 1079
    :goto_3
    if-nez v0, :cond_1

    .line 1080
    aget-object v0, v4, v3

    .line 1083
    :cond_1
    return-object v0

    .line 1060
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 1070
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public getDeviceMaxGamma()I
    .locals 1

    .prologue
    .line 1152
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_deviceMaxGamma:I

    return v0
.end method

.method public getDeviceMaxLightLevel()I
    .locals 1

    .prologue
    .line 1150
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_deviceMaxLightLevel:I

    return v0
.end method

.method public getEnableProjectProtection()Z
    .locals 1

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_enableProjectProtection:Z

    return v0
.end method

.method public getExtraDurationForSplit()I
    .locals 1

    .prologue
    .line 1249
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_extraDurationForSplit:I

    return v0
.end method

.method public getForceDirectExport()I
    .locals 1

    .prologue
    .line 1144
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_forceDirectExport:I

    return v0
.end method

.method public getFullHDMaxTransitionTime()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_fullHDMaxTransitionTime:I

    return v0
.end method

.method public getGLDepthBufferBits()I
    .locals 1

    .prologue
    .line 1115
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_glDepthBufferBits:I

    return v0
.end method

.method public getGLMultisample()Z
    .locals 1

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_glMultisample:Z

    return v0
.end method

.method public getHardwareCodecMemSize()I
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareCodecMemSize:I

    return v0
.end method

.method public getHardwareDecMaxCount()I
    .locals 1

    .prologue
    .line 1133
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareDecMaxCount:I

    return v0
.end method

.method public getHardwareEncMaxCount()I
    .locals 1

    .prologue
    .line 1141
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_hardwareEncMaxCount:I

    return v0
.end method

.method public getImageRecordingMode()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_imageRecording:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    return-object v0
.end method

.method public getIntProperty(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1282
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1287
    :cond_0
    :goto_0
    return p2

    .line 1283
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getIsDeviceSupported()Z
    .locals 2

    .prologue
    .line 1331
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_support:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_audioCodecCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_audioCodecCount:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getAVCSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMPEGV4Supported()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLimitTextInputHeight()Z
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_limitTextInputHeight:Z

    return v0
.end method

.method public getLongProperty(Ljava/lang/String;J)J
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1313
    :cond_0
    :goto_0
    return-wide p2

    .line 1309
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMCHWAVCDecBaselineSize()I
    .locals 3

    .prologue
    .line 939
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCHWAVCDecBaselineSize:I

    const/4 v1, 0x0

    const-string v2, "MCHWAVCDecBaselineLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMCHWAVCDecHighSize()I
    .locals 3

    .prologue
    .line 947
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCHWAVCDecHighSize:I

    const/4 v1, 0x0

    const-string v2, "MCHWAVCDecHighLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMCHWAVCDecMainSize()I
    .locals 3

    .prologue
    .line 943
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCHWAVCDecMainSize:I

    const/4 v1, 0x0

    const-string v2, "MCHWAVCDecMainLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMCSWAVCDecBaselineSize()I
    .locals 3

    .prologue
    .line 926
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCSWAVCDecBaselineSize:I

    const-string v1, "canUseMCSoftwareCodec"

    const-string v2, "MCSWAVCDecBaselineLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMCSWAVCDecHighSize()I
    .locals 3

    .prologue
    .line 934
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCSWAVCDecHighSize:I

    const-string v1, "canUseMCSoftwareCodec"

    const-string v2, "MCSWAVCDecMainLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMCSWAVCDecMainSize()I
    .locals 3

    .prologue
    .line 930
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_MCSWAVCDecMainSize:I

    const-string v1, "canUseMCSoftwareCodec"

    const-string v2, "MCSWAVCDecMainLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMPEGV4Supported()Z
    .locals 1

    .prologue
    .line 1257
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportMPEGV4:Z

    return v0
.end method

.method public getMatchInfo()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$a;
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_matchInfo:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$a;

    return-object v0
.end method

.method public getMaxCamcorderProfileSizeForUnknownDevice()I
    .locals 1

    .prologue
    .line 909
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxCamcorderProfileSizeForUnknownDevice:I

    return v0
.end method

.method public getMaxImportSize(Z)I
    .locals 1

    .prologue
    .line 881
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxImportSWSize:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxImportHWSize:I

    goto :goto_0
.end method

.method public getMaxResolution()I
    .locals 1

    .prologue
    .line 863
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxSupportedResolution:I

    return v0
.end method

.method public getMaxSpeedCtrlValue(II)I
    .locals 3

    .prologue
    const/16 v0, 0x96

    .line 1231
    mul-int v1, p1, p2

    iget v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxImportHWSize:I

    if-gt v1, v2, :cond_1

    .line 1240
    :cond_0
    :goto_0
    return v0

    .line 1236
    :cond_1
    mul-int v1, p1, p2

    const v2, 0xe6000

    if-le v1, v2, :cond_0

    .line 1238
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public getMaxSupportedAudioChannels(I)I
    .locals 1

    .prologue
    .line 1367
    const-string v0, "max_supported_audio_channels"

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxSupportedAudioSamplingRate(I)I
    .locals 1

    .prologue
    .line 1363
    const-string v0, "max_supported_audio_samplingrate"

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMaxSupportedFPS()I
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxSupportedFPS:I

    return v0
.end method

.method public getMaxSupportedVideoBitrate(I)I
    .locals 1

    .prologue
    .line 1359
    const-string v0, "max_supported_video_bitrate"

    invoke-virtual {p0, v0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getMinSpeedCtrlValue()I
    .locals 1

    .prologue
    .line 1245
    const/16 v0, 0x19

    return v0
.end method

.method public getNXSWAVCDecBaselineSize()I
    .locals 3

    .prologue
    .line 913
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_NXSWAVCDecBaselineSize:I

    const-string v1, "canUseSoftwareCodec"

    const-string v2, "NXSWAVCDecBaselineLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNXSWAVCDecHighSize()I
    .locals 3

    .prologue
    .line 921
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_NXSWAVCDecHighSize:I

    const-string v1, "canUseSoftwareCodec"

    const-string v2, "NXSWAVCDecHighLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNXSWAVCDecMainSize()I
    .locals 3

    .prologue
    .line 917
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_NXSWAVCDecMainSize:I

    const-string v1, "canUseSoftwareCodec"

    const-string v2, "NXSWAVCDecMainLevelSize"

    invoke-direct {p0, v0, v1, v2}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getNativeLogLevel()I
    .locals 1

    .prologue
    .line 1146
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_nativeLogLevel:I

    return v0
.end method

.method public getNeedSeekBeforeFastPreview()Z
    .locals 1

    .prologue
    .line 1095
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_needSeekBeforeFastPreview:Z

    return v0
.end method

.method public getNeedsColorFormatCheck()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1261
    invoke-virtual {p0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->isUnknownDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1262
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->mBoardPlatform:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exynos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1265
    goto :goto_0

    .line 1268
    :cond_2
    const-string v2, "chk_color_fmt"

    invoke-virtual {p0, v2, v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getProfileSource()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_profileSource:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;

    return-object v0
.end method

.method public getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1275
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public getSupportIfUpgradeVersion()I
    .locals 1

    .prologue
    .line 1337
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportIfUpgradeVersion:I

    return v0
.end method

.method public getSupportedExportProfiles(Z)[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
    .locals 2

    .prologue
    .line 983
    .line 986
    if-eqz p1, :cond_0

    .line 987
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_actualSupportedExportProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 992
    :goto_0
    if-eqz v0, :cond_1

    .line 993
    invoke-direct {p0, v0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a([Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;Z)[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    move-result-object v0

    .line 1018
    :goto_1
    return-object v0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_actualSupportedExportProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    goto :goto_0

    .line 995
    :cond_1
    if-eqz p1, :cond_3

    .line 996
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_exportProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 1001
    :goto_2
    if-nez v0, :cond_2

    .line 1002
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/config/EditorGlobal;->a()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    .line 1003
    if-nez v0, :cond_4

    .line 1004
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 1012
    :cond_2
    :goto_3
    if-eqz p1, :cond_5

    .line 1013
    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_actualSupportedExportProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 1018
    :goto_4
    invoke-direct {p0, v0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->a([Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;Z)[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    move-result-object v0

    goto :goto_1

    .line 998
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_exportProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    goto :goto_2

    .line 1006
    :cond_4
    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->j()Lcom/nexstreaming/kminternal/nexvideoeditor/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/d;->a()I

    move-result v0

    invoke-static {v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getExportProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 1007
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    goto :goto_3

    .line 1015
    :cond_5
    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_actualSupportedExportProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    goto :goto_4
.end method

.method public getSupportedExtraProfiles(Z)[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
    .locals 1

    .prologue
    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_exportExtraProfilesSW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    .line 1048
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_exportExtraProfilesHW:[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    goto :goto_0
.end method

.method public getSupportedTimeCheker()I
    .locals 1

    .prologue
    .line 1148
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_supportedTimeCheker:I

    return v0
.end method

.method public getTranscodeMaxInputResolution(Z)Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$b;
    .locals 1

    .prologue
    .line 1156
    sget-object v0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->b:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$b;

    return-object v0
.end method

.method public getTranscodeProfile(Z)Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
    .locals 7

    .prologue
    .line 1161
    .line 1163
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxImportSize(Z)I

    move-result v1

    .line 1164
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_transcodeProfile:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    if-nez v0, :cond_3

    .line 1165
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getSupportedExportProfiles(Z)[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 1166
    invoke-virtual {v4}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->width()I

    move-result v5

    invoke-virtual {v4}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v6

    add-int/lit8 v6, v6, -0x1f

    mul-int/2addr v5, v6

    if-le v5, v1, :cond_1

    .line 1165
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1168
    :cond_1
    invoke-virtual {v4}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->width()I

    move-result v5

    const/16 v6, 0x780

    if-gt v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v5

    const/16 v6, 0x440

    if-gt v5, v6, :cond_0

    .line 1170
    iget-object v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_transcodeProfile:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_transcodeProfile:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    invoke-virtual {v5}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v5

    invoke-virtual {v4}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1171
    :cond_2
    iput-object v4, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_transcodeProfile:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    goto :goto_1

    .line 1175
    :cond_3
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_transcodeProfile:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    if-nez v0, :cond_4

    .line 1176
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1178
    :cond_4
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_transcodeProfile:Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    return-object v0
.end method

.method public getTranscodeProfile(ZII)Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;
    .locals 10

    .prologue
    .line 1182
    mul-int v4, p2, p3

    .line 1183
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxImportSWSize:I

    .line 1184
    :goto_0
    const/4 v2, 0x0

    .line 1185
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getMaxImportSize(Z)I

    move-result v5

    .line 1187
    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getSupportedExportProfiles(Z)[Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    move-result-object v6

    array-length v7, v6

    const/4 v1, 0x0

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_5

    aget-object v1, v6, v3

    .line 1189
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->width()I

    move-result v8

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v9

    add-int/lit8 v9, v9, -0x1f

    mul-int/2addr v8, v9

    if-le v8, v5, :cond_2

    .line 1187
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 1183
    :cond_1
    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_maxImportHWSize:I

    goto :goto_0

    .line 1191
    :cond_2
    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->width()I

    move-result v8

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->height()I

    move-result v9

    mul-int/2addr v8, v9

    .line 1192
    mul-int/lit8 v9, v4, 0x69

    div-int/lit8 v9, v9, 0x64

    if-gt v8, v9, :cond_0

    if-gt v8, v0, :cond_0

    move-object v0, v1

    .line 1197
    :goto_2
    if-nez v0, :cond_3

    .line 1199
    invoke-static {p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getExportProfiles(II)Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;

    move-result-object v0

    .line 1202
    :cond_3
    if-nez v0, :cond_4

    .line 1203
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0

    .line 1205
    :cond_4
    return-object v0

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method public getUseAndroidJPEGDecoder()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1355
    const-string/jumbo v1, "use_android_jpeg_dec"

    invoke-virtual {p0, v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUseEditorView()Z
    .locals 1

    .prologue
    .line 978
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_useEditorView:Z

    return v0
.end method

.method public getUseMediaExtractor()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1371
    const-string/jumbo v1, "use_mediaextractor"

    invoke-virtual {p0, v1, v0}, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUseNativeMediaDB()Z
    .locals 1

    .prologue
    .line 974
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_useNativeMediaDB:Z

    return v0
.end method

.method public getUserConfigSettings()Z
    .locals 1

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_bSetUserConfig:Z

    return v0
.end method

.method public getVideoRecordingMode()Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_videoRecording:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$MediaRecordingMode;

    return-object v0
.end method

.method public getVisualMediaFromKineMasterFolderOnly()Z
    .locals 1

    .prologue
    .line 1091
    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_visualMediaFromKineMasterFolderOnly:Z

    return v0
.end method

.method public isUnknownDevice()Z
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile;->m_profileSource:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;

    sget-object v1, Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;->Unknown:Lcom/nexstreaming/kminternal/kinemaster/config/NexEditorDeviceProfile$ProfileSource;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
