.class public final enum Lcom/google/api/MetricDescriptor$MetricKind;
.super Ljava/lang/Enum;
.source "MetricDescriptor.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricKind"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/MetricDescriptor$MetricKind$MetricKindVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/MetricDescriptor$MetricKind;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/MetricDescriptor$MetricKind;

.field public static final enum CUMULATIVE:Lcom/google/api/MetricDescriptor$MetricKind;

.field public static final CUMULATIVE_VALUE:I = 0x3

.field public static final enum DELTA:Lcom/google/api/MetricDescriptor$MetricKind;

.field public static final DELTA_VALUE:I = 0x2

.field public static final enum GAUGE:Lcom/google/api/MetricDescriptor$MetricKind;

.field public static final GAUGE_VALUE:I = 0x1

.field public static final enum METRIC_KIND_UNSPECIFIED:Lcom/google/api/MetricDescriptor$MetricKind;

.field public static final METRIC_KIND_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/api/MetricDescriptor$MetricKind;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/api/MetricDescriptor$MetricKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 44
    new-instance v0, Lcom/google/api/MetricDescriptor$MetricKind;

    const-string v1, "METRIC_KIND_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$MetricKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->METRIC_KIND_UNSPECIFIED:Lcom/google/api/MetricDescriptor$MetricKind;

    .line 52
    new-instance v1, Lcom/google/api/MetricDescriptor$MetricKind;

    const-string v2, "GAUGE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/api/MetricDescriptor$MetricKind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/MetricDescriptor$MetricKind;->GAUGE:Lcom/google/api/MetricDescriptor$MetricKind;

    .line 60
    new-instance v2, Lcom/google/api/MetricDescriptor$MetricKind;

    const-string v3, "DELTA"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/api/MetricDescriptor$MetricKind;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/api/MetricDescriptor$MetricKind;->DELTA:Lcom/google/api/MetricDescriptor$MetricKind;

    .line 72
    new-instance v3, Lcom/google/api/MetricDescriptor$MetricKind;

    const-string v4, "CUMULATIVE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/api/MetricDescriptor$MetricKind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/api/MetricDescriptor$MetricKind;->CUMULATIVE:Lcom/google/api/MetricDescriptor$MetricKind;

    .line 73
    new-instance v4, Lcom/google/api/MetricDescriptor$MetricKind;

    const/4 v5, 0x4

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/api/MetricDescriptor$MetricKind;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/api/MetricDescriptor$MetricKind;->UNRECOGNIZED:Lcom/google/api/MetricDescriptor$MetricKind;

    .line 35
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/api/MetricDescriptor$MetricKind;

    move-result-object v0

    sput-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->$VALUES:[Lcom/google/api/MetricDescriptor$MetricKind;

    .line 148
    new-instance v0, Lcom/google/api/MetricDescriptor$MetricKind$1;

    invoke-direct {v0}, Lcom/google/api/MetricDescriptor$MetricKind$1;-><init>()V

    sput-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 173
    iput p3, p0, Lcom/google/api/MetricDescriptor$MetricKind;->value:I

    .line 174
    return-void
.end method

.method public static forNumber(I)Lcom/google/api/MetricDescriptor$MetricKind;
    .locals 1
    .param p0, "value"    # I

    .line 134
    packed-switch p0, :pswitch_data_0

    .line 139
    const/4 v0, 0x0

    return-object v0

    .line 138
    :pswitch_0
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->CUMULATIVE:Lcom/google/api/MetricDescriptor$MetricKind;

    return-object v0

    .line 137
    :pswitch_1
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->DELTA:Lcom/google/api/MetricDescriptor$MetricKind;

    return-object v0

    .line 136
    :pswitch_2
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->GAUGE:Lcom/google/api/MetricDescriptor$MetricKind;

    return-object v0

    .line 135
    :pswitch_3
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->METRIC_KIND_UNSPECIFIED:Lcom/google/api/MetricDescriptor$MetricKind;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/api/MetricDescriptor$MetricKind;",
            ">;"
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 158
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind$MetricKindVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/api/MetricDescriptor$MetricKind;
    .locals 1
    .param p0, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 130
    invoke-static {p0}, Lcom/google/api/MetricDescriptor$MetricKind;->forNumber(I)Lcom/google/api/MetricDescriptor$MetricKind;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$MetricKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 35
    const-class v0, Lcom/google/api/MetricDescriptor$MetricKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/MetricDescriptor$MetricKind;

    return-object v0
.end method

.method public static values()[Lcom/google/api/MetricDescriptor$MetricKind;
    .locals 1

    .line 35
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->$VALUES:[Lcom/google/api/MetricDescriptor$MetricKind;

    invoke-virtual {v0}, [Lcom/google/api/MetricDescriptor$MetricKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/MetricDescriptor$MetricKind;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 116
    sget-object v0, Lcom/google/api/MetricDescriptor$MetricKind;->UNRECOGNIZED:Lcom/google/api/MetricDescriptor$MetricKind;

    if-eq p0, v0, :cond_0

    .line 120
    iget v0, p0, Lcom/google/api/MetricDescriptor$MetricKind;->value:I

    return v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
