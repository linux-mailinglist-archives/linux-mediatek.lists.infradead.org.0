Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B61B1F9E33
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 19:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCrZKZwEzqvP4yaSXHDksKrn+fqO88qr51TsBVCeaok=; b=AVcAafJ/0kQy7C
	79ysUaBTCadCABpAwBKuly7ZUnHqgnC2taggcaa7ISI7JWC+/+2K2wnC8dnBYT10/w7BJJyR1Hx7m
	2AbnoHiokPIDjMm19d6xyHxm7R7msvlsydaYqoLkw24IeZ8wEJ11i/vxk6rypbPD7cXPg+GoBfa7x
	79fL7vVAmGFNmEHzsKxaWz9VFx6ne5AIcu0iPIhB9CHsctBh+1RKEGZ5i6DUmxIGx4o58DaBoZJNy
	so0VWKK8yTuoH96kYk/AuocQzbzQoCWu2q7sq9iCXiToPqcgyZwL0CFwo7/agUixTSHt0fMTxa13G
	nNHmOtAEZdpA6VxdOyxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jksfk-0008IH-Pr; Mon, 15 Jun 2020 17:13:24 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jksfe-00087M-Sq
 for linux-mediatek@lists.infradead.org; Mon, 15 Jun 2020 17:13:23 +0000
X-UUID: e3d4d5e9ca914190898bf97aae68df43-20200615
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=oc3QafXm1CF82YjlI6nqdyTBr7TSVE8fsidMZ+Pjrj4=; 
 b=pIaFWFzk5JV22FVKNyeQsj08lUvQ54tf+yAbR2QQ3TBs8/WASXDuBuuBuOqKN9psIb14sJiwieb4Xy2L93AzXvCAxVbT54jb8wKRAI2x6/UXix18N0VxV6xJdbMLaltHc1g1CH58yZz37AnbAS2FgjJVpCgrK6/5skJzgnx9CPk=;
X-UUID: e3d4d5e9ca914190898bf97aae68df43-20200615
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 607027830; Mon, 15 Jun 2020 09:13:13 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 10:13:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 01:13:09 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 16 Jun 2020 01:13:06 +0800
Message-ID: <1592241189.9611.2.camel@mtkswgap22>
Subject: Re: [PATCH v3 1/4] mt76: mt7915: add missing CONFIG_MAC80211_DEBUGFS
From: Ryder Lee <ryder.lee@mediatek.com>
To: Kalle Valo <kvalo@codeaurora.org>
Date: Tue, 16 Jun 2020 01:13:09 +0800
In-Reply-To: <87sgewe34z.fsf@tynnyri.adurom.net>
References: <cover.1592158312.git.ryder.lee@mediatek.com>
 <2863c9a7e14c791202738597184f4a6b75d5bc07.1592158312.git.ryder.lee@mediatek.com>
 <87sgewe34z.fsf@tynnyri.adurom.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 07440FB9B681473D20C4BC95386B2CA7ADBFE4D833AB41BCEA6F6123F4DCF7792000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_101321_825159_B33A53C8 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>,
 Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2020-06-15 at 18:54 +0300, Kalle Valo wrote:
> Ryder Lee <ryder.lee@mediatek.com> writes:
> 
> > Add CONFIG_MAC80211_DEBUGFS to fix a reported warning.
> >
> > Fixes: ec9742a ("mt76: mt7915: add .sta_add_debugfs support")
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> 
> Same comments as in v2:
> 
> Fixes: ec9742a8f38e ("mt76: mt7915: add .sta_add_debugfs support")
> 
> Should this go to v5.8?
> 

Yep:)

Ryder
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
