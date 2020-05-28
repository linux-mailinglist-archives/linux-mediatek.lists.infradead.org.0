Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD511E6234
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 15:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J0//IjJwJGhAPVstz11G7GZNPrHF6FED1JTFOTRePMg=; b=hl3fmSxu9URP4h
	OccPyXWQmmRIMMQG3jWhECMEs7tlEJ6y54hqKXvoMR0h46KxS4PSTrxGre4u9PktNAXuKXaqAumeT
	e22sNhmwCE3JRlYss5QuhbMOV78waKwlsQOvjBt/lReRItkShR5TrfhqzRhtzqh94FJc5yS3/oMNO
	ljJarOacgO2BMYXMuRNUhHXklix2E/BkkRy2uZjZcj9FJdZSQLXq/bySSYytBZcnQWHHhiPu9NthJ
	HYjhSHgOCFrD+RXmGvpKTAOqzCYcOkrigQsXtdse+YnaFJVhF/ScEhILmHXN/XclMgKSBGU1lzqVi
	f1ap3KaFuULV3bJqD4HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeIZs-00011m-Bx; Thu, 28 May 2020 13:28:08 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeIZg-0000re-J2
 for linux-mediatek@lists.infradead.org; Thu, 28 May 2020 13:27:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id f5so3178362wmh.2
 for <linux-mediatek@lists.infradead.org>; Thu, 28 May 2020 06:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9cN8WC7B8xH4SW3c0YEgj3hG2uP+gsYVa8Phs/daLJo=;
 b=XhU9Ag1ZLhT6nRnPcN/QI44p0PvvTskUnXmbN7WZRjd0YK63lIUd2JzL7Ymo5MnHpF
 CKuiJgYA8GajqzmjbrwTZBPpRm1rdmf9aUTcTr1Ptu7f5DEizfgwzQrBN1yqo1ZynKXM
 gsHFRlzRGEEKjj4pUGIUil9HKgvMyyc+xTk3o3rxmRZ/WDY2zuuNKPNoGZvDvhFReQPU
 JmRi9ZP6d6BgpPtIXPvFqOgY2ngEhp0ozEYddVmRNK/q3inC/U8ubvRcTlBaypFAdyte
 9nV1SyMkXnOZOBNr6wmwBL5sDwijzaWBPwXlRsa4Qmfc7ohCOkuaeKf+EOcAtG2Tvg/2
 dM+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9cN8WC7B8xH4SW3c0YEgj3hG2uP+gsYVa8Phs/daLJo=;
 b=Bv1YwYjfzXpy02BAKTmPeL2kEK1JvdnrjKL1dG/Sk8fZomR+71F9kzxmasMM+43q1M
 rMdcBsrvs0z9/CuXAFA6X+latQ5159Yf4JC8xrGMaN1E9fCJoAiKo6M/ehf7A/Y28QXG
 mOqIWdJH8mSyvuP/t4TOYNCMpxgltNxFDMc3Hp23R4iRFcwLlks2G5GcwBhRPqnFwGkI
 IN+6I+oVuX7mkaCrkRe3erUw48m/DI/edyEs5dyBW7F0wIUQ0Z7vX+b4UHgwAb26bJ5g
 z48uh7e1Lo4LWg/nLnzZs3o8t5SuPz8sRSVdlD8c0iwRb084H76Etd9AmcpdfhOksnm8
 TrTQ==
X-Gm-Message-State: AOAM532b0KW4DZUjXlp00m662TRgjb5VIVT1sJeodmSEhPLcsPTduYUl
 9H/uJyZXvx25sF3nlbbbVRUkOQ==
X-Google-Smtp-Source: ABdhPJwGxbatIHlP4QiBp7yS7pM9Cy7ihGVx/tvTL9NgArY/12jr4DGk9+/NG/bPpKAD3mawZpovqQ==
X-Received: by 2002:a1c:a943:: with SMTP id s64mr3345147wme.103.1590672474339; 
 Thu, 28 May 2020 06:27:54 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id q15sm6175408wrf.87.2020.05.28.06.27.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 06:27:53 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH net-next] dt-bindings: net: rename the bindings document for
 MediaTek STAR MAC
Date: Thu, 28 May 2020 15:27:43 +0200
Message-Id: <20200528132743.9221-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_062756_630077_A75884F1 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

The driver itself was renamed before getting merged into mainline, but
the binding document kept the old name. This makes both names consistent.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 .../net/{mediatek,eth-mac.yaml => mediatek,star-emac.yaml}        | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename Documentation/devicetree/bindings/net/{mediatek,eth-mac.yaml => mediatek,star-emac.yaml} (100%)

diff --git a/Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml b/Documentation/devicetree/bindings/net/mediatek,star-emac.yaml
similarity index 100%
rename from Documentation/devicetree/bindings/net/mediatek,eth-mac.yaml
rename to Documentation/devicetree/bindings/net/mediatek,star-emac.yaml
-- 
2.26.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
