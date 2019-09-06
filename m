Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EDBAB77E
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 13:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nEVHymjdRPLek2B8d4zl0sBPhNtPZkPfrkKfRLVOWNY=; b=dyAE2l4ccW3p5p
	Uso6VxNBuroMbG/kL38eeYOfPLxXlvB7w6FPCo9CeujMhoBDRIgySRT9a4aRSc3nN+neXuUI7Jvkf
	PiaIrWHV8g6yrm2fjx39iG1Ncv4svIg2IOS0q3EATx+ydPe2/yd39Yu8qBOWSqhhU8Ix+qMBoaZeL
	r26uiiAPQZg54rRpeeEoT8K0f2mVnN1kNNAmljGRDZcvIx2FXLwholllp/PI8C86S+UuZqXoA4ACp
	vbo5+45Zncy6ghVA8lU7SbRNegiX2RwCndTqtRxHwUfP/rM18oFxMyIv7YYyviTmt3CN+5J+Y6Bq3
	PkOu2NexCtSk30qRznvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6CqO-0004C8-DH; Fri, 06 Sep 2019 11:56:00 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6CqJ-00046a-S5
 for linux-mediatek@lists.infradead.org; Fri, 06 Sep 2019 11:55:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id r12so4330474pfh.1
 for <linux-mediatek@lists.infradead.org>; Fri, 06 Sep 2019 04:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n0xZnwvqrMb6ldOj+rJWYs9r2G218dDOkg+hug4AnqA=;
 b=gLYNOAhGFrZSLpPOwi/adRGDzZxevZp8l1+MggAdRf+GhloCsbcBldsllG04vfEQ5Q
 e3thTHGGQfil99wc0YZ5UsqSNh442lu3kiFdZ7SM0r+YCESy+jfzLjt0WumgScEWvr7p
 SNX6pDxHHDZhE/l7YzR8U864CeKlVREq3rMzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n0xZnwvqrMb6ldOj+rJWYs9r2G218dDOkg+hug4AnqA=;
 b=I5TtrFgTrqrzVmMQ0ELgH6y44CmKQNBgJdfBnep/eYOv8QmhmuAIU93mxlhlcpbsbb
 hBWWf9s5NTKnaNO6JIwgRj0ZW3+ZTUAECGh5npSJNS/WX5uDDbYMoyYRMpErrGo0u2+2
 Uw0q91nVvK/y6pUECMDWBhtyShGzGq7OsAWF/d/mzE8ErBHTBojVyBtVnfAyXOgzGM6C
 SYqfddz3l7qpJOiqYReJ14tyI8r1q9nMuGPOLI5eDsJMInf5dKGGnSpW13qdHU7Jmu8E
 KBy+dJ7kaqKb7nk0t6tPcbf/JdHZ4ApUdVmijyOofsOIJT0V3C/p+zRYzCdHsMvS72gp
 OIpQ==
X-Gm-Message-State: APjAAAUIauVlKGtpfo1tyKyuKfCBFt03AsMIrt3c+q7C/9ERShNeCTw5
 ON8Pd+j4TYMS7y7aZ4/eZZhqXw==
X-Google-Smtp-Source: APXvYqx5WhsXkvJ3BjBJ1D6yszHS/6Iq4oTXUP8qX5zioVUs3GbhIlU2rVJbHdqrkKNPSmEZQmBIAw==
X-Received: by 2002:a63:6686:: with SMTP id a128mr7450171pgc.361.1567770955316; 
 Fri, 06 Sep 2019 04:55:55 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id o22sm3667394pjq.21.2019.09.06.04.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Sep 2019 04:55:54 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [RFC PATCH v2 09/13] media: doc: Add documentation for MM21 video
 format
Date: Fri,  6 Sep 2019 20:55:09 +0900
Message-Id: <20190906115513.159705-10-acourbot@chromium.org>
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
In-Reply-To: <20190906115513.159705-1-acourbot@chromium.org>
References: <20190906115513.159705-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_045555_930697_F9BE1936 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 Alexandre Courbot <acourbot@chromium.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add the documentation for the MM21 video format, used by the MT8183
codec and MDP3 image processor.

Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 Documentation/media/uapi/v4l/pixfmt-reserved.rst | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/media/uapi/v4l/pixfmt-reserved.rst b/Documentation/media/uapi/v4l/pixfmt-reserved.rst
index b2cd155e691b..10d5bda9ffc7 100644
--- a/Documentation/media/uapi/v4l/pixfmt-reserved.rst
+++ b/Documentation/media/uapi/v4l/pixfmt-reserved.rst
@@ -264,6 +264,16 @@ please make a proposal on the linux-media mailing list.
 	of tiles, resulting in 32-aligned resolutions for the luminance plane
 	and 16-aligned resolutions for the chrominance plane (with 2x2
 	subsampling).
+    * .. _V4L2-PIX-FMT-MM21:
+
+      - ``V4L2_PIX_FMT_MM21``
+      - 'MM21'
+      - Non-compressed two-planar block format used by Mediatek MT8183.
+	The compression is lossless.
+	It is an opaque intermediate format and the MDP3 hardware must be
+	used to convert ``V4L2_PIX_FMT_MM21`` to a non-proprietary video
+	format.
+
 
 .. tabularcolumns:: |p{6.6cm}|p{2.2cm}|p{8.7cm}|
 
-- 
2.23.0.187.g17f5b7556c-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
