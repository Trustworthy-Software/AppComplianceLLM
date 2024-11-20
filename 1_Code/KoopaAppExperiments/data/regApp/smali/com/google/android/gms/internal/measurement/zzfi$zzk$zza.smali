.class public final enum Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzjc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzfi$zzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzjc;"
    }
.end annotation


# static fields
.field private static final enum zza:Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

.field private static final enum zzb:Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzjb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzjb<",
            "Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;


# instance fields
.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    const-string v1, "RADS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    .line 18
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    const-string v2, "PROVISIONING"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    .line 19
    filled-new-array {v0, v1}, [Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zzd:[Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzfn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zzc:Lcom/google/android/gms/internal/measurement/zzjb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zze:I

    .line 24
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zzd:[Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;
    .locals 0

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 5
    const/4 p0, 0x0

    return-object p0

    .line 4
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zzb:Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zzje;
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzfm;->zza:Lcom/google/android/gms/internal/measurement/zzje;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12
    iget v2, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zze:I

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzfi$zzk$zza;->zze:I

    return v0
.end method
