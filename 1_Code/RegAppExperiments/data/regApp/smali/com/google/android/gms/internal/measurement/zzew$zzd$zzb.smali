.class public final enum Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzew$zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjc;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

.field private static final zzf:Lcom/google/android/gms/internal/measurement/zzjb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjb<",
            "Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    const-string v1, "UNKNOWN_COMPARISON_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    .line 21
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    const-string v2, "LESS_THAN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    .line 22
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    const-string v3, "GREATER_THAN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    .line 23
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    const-string v4, "EQUAL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    .line 24
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    const-string v5, "BETWEEN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    .line 25
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    move-result-object v0

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzg:[Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    .line 27
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzex;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzf:Lcom/google/android/gms/internal/measurement/zzjb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzh:I

    .line 30
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzg:[Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;
    .locals 0

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 8
    const/4 p0, 0x0

    return-object p0

    .line 7
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zze:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    return-object p0

    .line 6
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzd:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    return-object p0

    .line 5
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzc:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzb:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    return-object p0

    .line 3
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zza:Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzje;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzey;->zza:Lcom/google/android/gms/internal/measurement/zzje;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzh:I

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzew$zzd$zzb;->zzh:I

    return v0
.end method
