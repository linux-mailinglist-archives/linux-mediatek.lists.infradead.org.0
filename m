Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 224851A9C07
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Apr 2020 13:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vxjdjGDSA+inJqvjF2InkAjLyCJZMOnFuVb00Y3LX1g=; b=pYwMHeWOEGuWqN
	0mdXm+jmJsrnbH7R/yUqBi3hLE3sx0d5hd8djz18iqciyfyD7y/2nnH/8zSJYANbT4IKDa1QGFoWG
	Miag5AC2u1J4ECftW0Pa+CcF4RZ4nZC45c8kG9mD+NIw5BiH74CdCj9TbRBoSZ7OJuUq89UEZVG/T
	at4FnDPlfvJgqh2HGprb+jioYige1q0Y3trX1/U1ozaAbaxT1eusIjTEq0XycTycVLRFYOXNGkVt6
	0pypOU6JzvFDohaUq+g0oi4SNNvCEf5C6mNFOHMpCTttvcF5VjeEJlgY1giWrKB2h2p9ZSzsBDvb7
	CgZ40UEkEFZ+sYdvJo+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOg5f-0004Ww-KA; Wed, 15 Apr 2020 11:20:23 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOg4a-0001Mx-Vs; Wed, 15 Apr 2020 11:19:18 +0000
X-UUID: 23b4810764e4438abf259344ad78715d-20200415
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=VxaaBmnZiciOML8KK3Xnbo/VtfQpkB4jCNcyrHqsQOc=; 
 b=WWo1FeKNnFH9I+I63Gk9uExc09/f9ECYeUvXSA02B903bEMD3mqIDQ9+dp4h8O3nKPSmaeqVd4veC1jZRrIbrd6tcJNwWJoA0mRgMao7vf6c4Nx7/ejM0iHRfp9sxIKopMnnG4UO73j1KFK9iGX/go5w5oymnTV76gh8fkkfdAc=;
X-UUID: 23b4810764e4438abf259344ad78715d-20200415
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <anthony.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 283387120; Wed, 15 Apr 2020 03:19:01 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 04:19:08 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 15 Apr 2020 19:18:56 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 15 Apr 2020 19:18:56 +0800
From: Anthony Huang <anthony.huang@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: Add Mediatek MMDVFS driver
Date: Wed, 15 Apr 2020 19:18:24 +0800
Message-ID: <1586949506-22990-1-git-send-email-anthony.huang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2FC43E88FC5EC31261F318F81DD4C58D1769D04964F53E9E647465ED3ADE254F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_041917_038932_687E8FC5 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

his patchset adds the Mediatek MMDVFS(Multimedia Dynamic Voltage and
Frequency Scaling) driver. The multimedia HWs, such as display, camera,
share the same power supplier, and on some platforms, they share the
same clock MUX. If each HW needs different clock frequency at the same
time, the clock MUX must be set to the clock source which can meet the
highest required clock frequency.

Following implementation is used to achieve the goal. There are OPP tables
for all the clock MUXs for MM HWs defined in DTS, ant these OPP tables have
the same number of levels. The MMDVFS registers the regulator callback and
the MM HWs can get available clock frequencies from OPP tables and set
corresponding voltage by regulor API. The MMDVFS's callback will be
triggered if the voltage is changed and this voltage represents the highest
required OPP level. The MMDVFS has a mapping table: which clock source
should be set to each clock MUX for every OPP level. So all the clock MUXs
will be set to the clock sources according to the current OPP level in the
MMDVFS's regulator callback.



Anthony Huang (2):
  dt-bindings: soc: mediatek: Add document for mmdvfs driver
  soc: mediatek: Add mtk-mmdvfs driver

 .../devicetree/bindings/soc/mediatek/mmdvfs.yaml   |  198 +++++++++++++
 drivers/soc/mediatek/Kconfig                       |    9 +
 drivers/soc/mediatek/Makefile                      |    1 +
 drivers/soc/mediatek/mtk-mmdvfs.c                  |  312 ++++++++++++++++++++
 4 files changed, 520 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/mmdvfs.yaml
 create mode 100644 drivers/soc/mediatek/mtk-mmdvfs.c

-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
