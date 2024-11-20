.class final enum Lcom/google/android/gms/measurement/internal/zzaj;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zzaj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zze:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzf:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzg:Lcom/google/android/gms/measurement/internal/zzaj;

.field public static final enum zzh:Lcom/google/android/gms/measurement/internal/zzaj;

.field private static final synthetic zzi:[Lcom/google/android/gms/measurement/internal/zzaj;


# instance fields
.field private final zzj:C


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzaj;

    const/4 v1, 0x0

    const/16 v2, 0x30

    const-string v3, "UNSET"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 7
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzaj;

    const/4 v2, 0x1

    const/16 v3, 0x31

    const-string v4, "REMOTE_DEFAULT"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzaj;->zzb:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 8
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzaj;

    const/4 v3, 0x2

    const/16 v4, 0x32

    const-string v5, "REMOTE_DELEGATION"

    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzaj;->zzc:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 9
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzaj;

    const/4 v4, 0x3

    const/16 v5, 0x33

    const-string v6, "MANIFEST"

    invoke-direct {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzaj;->zzd:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 10
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzaj;

    const/4 v5, 0x4

    const/16 v6, 0x34

    const-string v7, "INITIALIZATION"

    invoke-direct {v4, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v4, Lcom/google/android/gms/measurement/internal/zzaj;->zze:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 11
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaj;

    const/4 v6, 0x5

    const/16 v7, 0x35

    const-string v8, "API"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzaj;->zzf:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 12
    new-instance v6, Lcom/google/android/gms/measurement/internal/zzaj;

    const/4 v7, 0x6

    const/16 v8, 0x36

    const-string v9, "CHILD_ACCOUNT"

    invoke-direct {v6, v9, v7, v8}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v6, Lcom/google/android/gms/measurement/internal/zzaj;->zzg:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 13
    new-instance v7, Lcom/google/android/gms/measurement/internal/zzaj;

    const/4 v8, 0x7

    const/16 v9, 0x39

    const-string v10, "FAILSAFE"

    invoke-direct {v7, v10, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Ljava/lang/String;IC)V

    sput-object v7, Lcom/google/android/gms/measurement/internal/zzaj;->zzh:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 14
    filled-new-array/range {v0 .. v7}, [Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    .line 15
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzi:[Lcom/google/android/gms/measurement/internal/zzaj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-char p3, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:C

    .line 18
    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzaj;->zzi:[Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzaj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzaj;

    return-object v0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/measurement/internal/zzaj;)C
    .locals 0

    iget-char p0, p0, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:C

    return p0
.end method

.method public static zza(C)Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaj;->values()[Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget-char v4, v3, Lcom/google/android/gms/measurement/internal/zzaj;->zzj:C

    if-ne v4, p0, :cond_0

    .line 3
    return-object v3

    .line 4
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzaj;->zza:Lcom/google/android/gms/measurement/internal/zzaj;

    return-object p0
.end method
