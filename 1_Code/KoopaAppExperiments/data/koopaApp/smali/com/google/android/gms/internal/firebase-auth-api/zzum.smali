.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzum;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzum;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

.field public static final enum zze:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzum;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/firebase-auth-api/zzum;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    const-string v1, "KDF_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    .line 20
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    const-string v2, "HKDF_SHA256"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    .line 21
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    const-string v3, "HKDF_SHA384"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    .line 22
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    const-string v4, "HKDF_SHA512"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    .line 23
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    const/4 v5, 0x4

    const/4 v6, -0x1

    const-string v7, "UNRECOGNIZED"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    .line 24
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzg:[Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzul;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzul;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzaiv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzh:I

    .line 29
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzum;
    .locals 1

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzg:[Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzum;
    .locals 0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 9
    const/4 p0, 0x0

    return-object p0

    .line 8
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    return-object p0

    .line 7
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    return-object p0

    .line 6
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    if-eq p0, v1, :cond_0

    .line 15
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    :cond_0
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzum;

    if-eq p0, v0, :cond_0

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzh:I

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
