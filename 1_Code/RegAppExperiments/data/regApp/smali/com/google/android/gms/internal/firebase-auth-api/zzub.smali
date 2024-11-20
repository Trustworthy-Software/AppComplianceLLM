.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzub;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzub;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

.field public static final enum zze:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

.field public static final enum zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

.field private static final enum zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

.field private static final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzaiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzub;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/firebase-auth-api/zzub;


# instance fields
.field private final zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    const-string v1, "UNKNOWN_HASH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    const-string v2, "SHA1"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    .line 23
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    const-string v3, "SHA384"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    .line 24
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    const-string v4, "SHA256"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    .line 25
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    const-string v5, "SHA512"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    .line 26
    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    const-string v6, "SHA224"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    .line 27
    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    const/4 v7, 0x6

    const/4 v8, -0x1

    const-string v9, "UNRECOGNIZED"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    .line 28
    filled-new-array/range {v0 .. v6}, [Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzi:[Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzud;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzud;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzaiv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzj:I

    .line 33
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzub;
    .locals 1

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzi:[Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzub;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzub;
    .locals 0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 11
    const/4 p0, 0x0

    return-object p0

    .line 10
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    return-object p0

    .line 9
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    return-object p0

    .line 8
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    return-object p0

    .line 7
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    return-object p0

    .line 5
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    if-eq p0, v1, :cond_0

    .line 17
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    :cond_0
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzub;

    if-eq p0, v0, :cond_0

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzub;->zzj:I

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
