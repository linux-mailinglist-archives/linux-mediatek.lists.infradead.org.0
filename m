Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035C67B8AE
	for <lists+linux-mediatek@lfdr.de>; Wed, 31 Jul 2019 06:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DMyfvO4CJqWHJiQkknsrSXzZISjg2FsXOr0pfx0WYc4=; b=LINoEq+mq5yqui
	6vn3fm5Vw5iN+h8KVCjEH/7y/SeG1O02NP8sjyIM2xCVIjm5TWYb4mFvEEsgHsyx9SKqWaM4v1zIG
	rykEluUBAeL+0yRbWV+jUNOiUpdZUtflEOptsNxWJyFG/be7GLsNHmpgAM8yYluRnPpjOxWzHFfJd
	PMdW69DkGuvUB7U6N0rZ6C25Th8BTWSNswQ2c2t6GvU5c8lANyIi+icgdFLF7mSw4/SeN8Hft8OnW
	yBDjn5EgHebwAJIyJwGPgdUmw1ec9u7av+erPz5GEtpm73ADQniDEgTqwJYQV3A2QYSuzhzPMcmdm
	OYeNePAbYWr6lLy4Ky0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsgFR-00064e-Ib; Wed, 31 Jul 2019 04:29:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsgFM-00064G-Nq; Wed, 31 Jul 2019 04:29:54 +0000
X-UUID: a343607498bd4bf1af7a2f26c9409a2f-20190730
X-UUID: a343607498bd4bf1af7a2f26c9409a2f-20190730
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1841500169; Tue, 30 Jul 2019 20:29:45 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Jul 2019 21:29:44 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 31 Jul 2019 12:29:42 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 31 Jul 2019 12:29:41 +0800
From: <gtk_ruiwang@mediatek.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Tomasz Figa <tfiga@chromium.org>,
 Tiffany Lin <tiffany.lin@mediatek.com>
Subject: [v2] media: mtk-vcodec: Handle H264 error bitstreams
Date: Wed, 31 Jul 2019 12:29:39 +0800
Message-ID: <20190731042939.5339-1-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_212952_783121_6708CC9D 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Rui Wang <gtk_ruiwang@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Longfei Wang <longfei.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Rui Wang <gtk_ruiwang@mediatek.com>

Error h264 bitstreams which picture info are out range of
decoder hardware specification, and no nal start code at the
beginning of the buffer, stop decoding and exit.

Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>
---
Change note:
Updata commint message with Mauro's comment: use real name on SOB and From.
---
 .../platform/mtk-vcodec/vdec/vdec_h264_if.c      | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
index c5f8f1fca44c..49aa85a9bb5a 100644
--- a/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
+++ b/drivers/media/platform/mtk-vcodec/vdec/vdec_h264_if.c
@@ -29,6 +29,9 @@
 #define H264_MAX_FB_NUM				17
 #define HDR_PARSING_BUF_SZ			1024
 
+#define DEC_ERR_RET(ret)			((ret) >> 16)
+#define H264_ERR_NOT_VALID			3
+
 /**
  * struct h264_fb - h264 decode frame buffer information
  * @vdec_fb_va  : virtual address of struct vdec_fb
@@ -357,8 +360,11 @@ static int vdec_h264_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 	buf = (unsigned char *)bs->va;
 	buf_sz = bs->size;
 	nal_start_idx = find_start_code(buf, buf_sz);
-	if (nal_start_idx < 0)
+	if (nal_start_idx < 0) {
+		mtk_vcodec_err(inst, "invalid nal start code");
+		err = -EIO;
 		goto err_free_fb_out;
+	}
 
 	nal_start = buf[nal_start_idx];
 	nal_type = NAL_TYPE(buf[nal_start_idx]);
@@ -382,8 +388,14 @@ static int vdec_h264_decode(void *h_vdec, struct mtk_vcodec_mem *bs,
 	data[0] = buf_sz;
 	data[1] = nal_start;
 	err = vpu_dec_start(vpu, data, 2);
-	if (err)
+	if (err) {
+		if (err > 0 && (DEC_ERR_RET(err) == H264_ERR_NOT_VALID)) {
+			mtk_vcodec_err(inst, "- error bitstream - err = %d -",
+				       err);
+			err = -EIO;
+		}
 		goto err_free_fb_out;
+	}
 
 	*res_chg = inst->vsi->dec.resolution_changed;
 	if (*res_chg) {
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
