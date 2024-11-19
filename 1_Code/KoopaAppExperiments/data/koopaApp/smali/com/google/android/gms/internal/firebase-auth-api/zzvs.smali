.class public final enum Lcom/google/android/gms/internal/firebase-auth-api/zzvs;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvs;",
        ">;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaiw;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field public static final enum zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field public static final enum zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field public static final enum zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field public static final enum zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field public static final enum zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzaiv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzaiv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzvs;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzvs;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    const-string v1, "UNKNOWN_PREFIX"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 21
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    const-string v2, "TINK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 22
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    const-string v3, "LEGACY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 23
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    const-string v4, "RAW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 24
    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    const-string v5, "CRUNCHY"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 25
    new-instance v5, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    const/4 v6, 0x5

    const/4 v7, -0x1

    const-string v8, "UNRECOGNIZED"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 26
    filled-new-array/range {v0 .. v5}, [Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 28
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzaiv;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzi:I

    .line 31
    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/firebase-auth-api/zzvs;
    .locals 1

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzh:[Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    return-object v0
.end method

.method public static zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvs;
    .locals 0

    .line 4
    packed-switch p0, :pswitch_data_0

    .line 10
    const/4 p0, 0x0

    return-object p0

    .line 9
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    return-object p0

    .line 8
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    return-object p0

    .line 7
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    return-object p0

    .line 6
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

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


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    if-eq p0, v1, :cond_0

    .line 16
    const-string v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zza()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    :cond_0
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->name()Ljava/lang/String;

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
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    if-eq p0, v0, :cond_0

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzi:I

    return v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
