Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32005164004
	for <lists+linux-mediatek@lfdr.de>; Wed, 19 Feb 2020 10:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKziV+DPJpwCzB+EK4VoZsnmJAQH0bkH9GlJnp1Hdp0=; b=t31ydx4GhhGwy8
	HeJHm20TYMy5OVabJwNkVZC0wWiZn1TZ36H+lQ0q13MYSLfhWCmqUtnHQI9ltSmpV4Anty/iHpFLc
	HX3ipjtqfvrWdhCaUUm81cE4KIvfxRedoPe28Kkz1QbTtUef+sxOX7HVu1Qr/qN8kjLGgILqeZgIz
	kHVQSwBrC9KpDX1IphxlUci5cf14rbvteCHXEetr38affoG9ASYacfbjxyXO0RgfSuDDtctRYglPn
	hUgJS8jkb4xzEFuDZkKB0wwLAF5jWXOtl+f8J4hFNAxjOkKmmwye8lKUbbOAMdByOjNgmoffDeAm7
	9ei7v15BaIfKOx3eRhvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4LOx-0005ct-8t; Wed, 19 Feb 2020 09:12:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4LOX-0005Ei-Tv; Wed, 19 Feb 2020 09:11:51 +0000
X-UUID: 1e69c56ca0124babba386088aea3b68a-20200219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=SLGppPs6Z/J39znqpbn3i7/ZsMo7evHcwHC2/b+MPjU=; 
 b=qt0zwqzX4AHHitPhtdDlzMqc5Jzk7iBeYR/CHj0sm359kd8/gljuMzU7ipNZFXFnB0U8X96/BU/IM7h4ePi0eLaQ+xQsPDO8ZTf3HagJq2KcL/XushcFrFFgU61GUDDIDwNM0xnM2GaTs1uiVBin/Gbjd+DT/PD9pBddM1a2xnM=;
X-UUID: 1e69c56ca0124babba386088aea3b68a-20200219
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 880125802; Wed, 19 Feb 2020 01:11:41 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Feb 2020 01:12:04 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Feb 2020 17:09:07 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 19 Feb 2020 17:12:13 +0800
Message-ID: <1582103495.26304.42.camel@mtksdccf07>
Subject: Re: [PATCH v1 1/2] scsi: ufs: add required delay after gating
 reference clock
From: Stanley Chu <stanley.chu@mediatek.com>
To: Can Guo <cang@codeaurora.org>
Date: Wed, 19 Feb 2020 17:11:35 +0800
In-Reply-To: <a8cd5beee0a1e12a40da752c6cd9b5de@codeaurora.org>
References: <20200217093559.16830-1-stanley.chu@mediatek.com>
 <20200217093559.16830-2-stanley.chu@mediatek.com>
 <c6874825dd60ea04ed401fbd1b5cb568@codeaurora.org>
 <1581945168.26304.4.camel@mtksdccf07>
 <e518c4d1d94ec15e9c4c31c34a9e42d1@codeaurora.org>
 <1581946449.26304.15.camel@mtksdccf07>
 <56c1fc80919491d058d904fcc7301835@codeaurora.org>
 <a8cd5beee0a1e12a40da752c6cd9b5de@codeaurora.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9236600DEE7C39A014B8A4C770286A4CF9C92C55D3222424BDB3994F3AAEDF2E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_011149_970618_DDA53E55 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, martin.petersen@oracle.com,
 andy.teng@mediatek.com, jejb@linux.ibm.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, avri.altman@wdc.com,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 alim.akhtar@samsung.com, matthias.bgg@gmail.com, asutoshd@codeaurora.org,
 bvanassche@acm.org, linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Can,

On Wed, 2020-02-19 at 10:35 +0800, Can Guo wrote:

> Since we all need this delay here, how about put the delay in the
> entrence of ufshcd_setup_clocks(), before vops_setup_clocks()?
> If so, we can remove all the delays we added in our vops since the
> delay anyways delays everything inside ufshcd_setup_clocks().
> 

Always putting the delay in the entrance of ufshcd_setup_clocks() may
add unwanted delay for vendors, just like your current implementation,
or some other vendors who do not want to disable the reference clock.

I think current patch is more reasonable because the delay is applied to
clock only named as "ref_clk" specifically.

If you needs to keep "ref_clk" in DT, would you consider to remove the
delay in your ufs_qcom_dev_ref_clk_ctrl() and let the delay happens via
common ufshcd_setup_clocks() only? However you may still need delay if
call path comes from ufs_qcom_pwr_change_notify().

What do you think?

> Meanwhile, if you want to modify the delay
> (hba->dev_info.clk_gating_wait_us) for some reasons, say for specific
> UFS devices, you still can do it in vops_apply_dev_quirks().
> 
> What do you say?
> 
> Thanks,
> Can Guo.

Thanks,
Stanley Chu

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
