.class public Lcom/google/android/gms/internal/firebase-auth-api/zzaey;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzacn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzacn<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaey;",
        ">;"
    }
.end annotation


# static fields
.field private static final zza:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2
    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaey;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaey;->zza:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzacn;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaad;
        }
    .end annotation

    .line 1
    return-object p0
.end method
