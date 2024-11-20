.class public final enum Lcom/google/android/recaptcha/internal/zzkw;
.super Ljava/lang/Enum;
.source "com.google.android.recaptcha:recaptcha@@18.1.2"

# interfaces
.implements Lcom/google/android/recaptcha/internal/zzgq;


# static fields
.field public static final enum zza:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzb:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzc:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzd:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zze:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzf:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzg:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzh:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzi:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzj:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzk:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzl:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzm:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzn:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzo:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzp:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzq:Lcom/google/android/recaptcha/internal/zzkw;

.field public static final enum zzr:Lcom/google/android/recaptcha/internal/zzkw;

.field private static final zzs:Lcom/google/android/recaptcha/internal/zzgr;

.field private static final synthetic zzt:[Lcom/google/android/recaptcha/internal/zzkw;


# instance fields
.field private final zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    new-instance v1, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v0, v1

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/recaptcha/internal/zzkw;->zza:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v2, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v1, v2

    .line 2
    const-string v3, "INIT_NATIVE"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/recaptcha/internal/zzkw;->zzb:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v3, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v2, v3

    .line 3
    const-string v4, "INIT_NETWORK"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/recaptcha/internal/zzkw;->zzc:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v4, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v3, v4

    .line 4
    const-string v5, "INIT_JS"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/recaptcha/internal/zzkw;->zzd:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v5, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v4, v5

    .line 5
    const-string v6, "INIT_TOTAL"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/recaptcha/internal/zzkw;->zze:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v6, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v5, v6

    .line 6
    const-string v7, "EXECUTE_NATIVE"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v8}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/recaptcha/internal/zzkw;->zzf:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v7, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v6, v7

    .line 7
    const-string v8, "EXECUTE_JS"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v9}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/recaptcha/internal/zzkw;->zzg:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v8, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v7, v8

    .line 8
    const-string v9, "EXECUTE_TOTAL"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v10}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/recaptcha/internal/zzkw;->zzh:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v9, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v8, v9

    .line 9
    const-string v10, "CHALLENGE_ACCOUNT_NATIVE"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11, v11}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/recaptcha/internal/zzkw;->zzi:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v10, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v9, v10

    .line 10
    const-string v11, "CHALLENGE_ACCOUNT_JS"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12, v12}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/recaptcha/internal/zzkw;->zzj:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v11, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v10, v11

    .line 11
    const-string v12, "CHALLENGE_ACCOUNT_TOTAL"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13, v13}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/recaptcha/internal/zzkw;->zzk:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v12, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v11, v12

    .line 12
    const-string v13, "VERIFY_PIN_NATIVE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14, v14}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/recaptcha/internal/zzkw;->zzl:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v13, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v12, v13

    .line 13
    const-string v14, "VERIFY_PIN_JS"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15, v15}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/recaptcha/internal/zzkw;->zzm:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v14, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v13, v14

    .line 14
    const-string v15, "VERIFY_PIN_TOTAL"

    move-object/from16 v18, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0, v0}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/recaptcha/internal/zzkw;->zzn:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v14, v0

    .line 15
    const-string v15, "RUN_PROGRAM"

    move-object/from16 v19, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1, v1}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzkw;->zzo:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzkw;

    move-object v15, v0

    .line 16
    const-string v1, "FETCH_ALLOWLIST"

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzkw;->zzp:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzkw;

    move-object/from16 v16, v0

    .line 17
    const-string v1, "JS_LOAD"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzkw;->zzq:Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzkw;

    move-object/from16 v17, v0

    .line 18
    const-string v1, "UNRECOGNIZED"

    const/16 v2, 0x11

    move-object/from16 v21, v3

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/recaptcha/internal/zzkw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzkw;->zzr:Lcom/google/android/recaptcha/internal/zzkw;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    filled-new-array/range {v0 .. v17}, [Lcom/google/android/recaptcha/internal/zzkw;

    move-result-object v0

    sput-object v0, Lcom/google/android/recaptcha/internal/zzkw;->zzt:[Lcom/google/android/recaptcha/internal/zzkw;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzkv;

    invoke-direct {v0}, Lcom/google/android/recaptcha/internal/zzkv;-><init>()V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzkw;->zzs:Lcom/google/android/recaptcha/internal/zzgr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/recaptcha/internal/zzkw;->zzu:I

    return-void
.end method

.method public static values()[Lcom/google/android/recaptcha/internal/zzkw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzkw;->zzt:[Lcom/google/android/recaptcha/internal/zzkw;

    invoke-virtual {v0}, [Lcom/google/android/recaptcha/internal/zzkw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/recaptcha/internal/zzkw;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzkw;->zza()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/recaptcha/internal/zzkw;->zzr:Lcom/google/android/recaptcha/internal/zzkw;

    if-eq p0, v0, :cond_0

    iget v0, p0, Lcom/google/android/recaptcha/internal/zzkw;->zzu:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
