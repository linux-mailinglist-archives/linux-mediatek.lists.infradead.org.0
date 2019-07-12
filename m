Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF97A667D7
	for <lists+linux-mediatek@lfdr.de>; Fri, 12 Jul 2019 09:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6rDXSFzmFIIZrJw3PQV0S2ykIg2x93fF+aIOkj6WdI=; b=Z7tFmclPLTUDDK
	OmOWMI205qqVPdpSc6znKJZqBcUHrOqYiXtTb4wS7iY+CfwsKtiHBDSvfstW8QLqbx9hDTGZ9WfQS
	SSMTtLmubd2BilZU5QUHLi95jeGuSRFC7oBleGHlnHJIxG6QtVRTSC0TLxbWlNCegcjiicfX1VGGm
	vey4K81knzxFyu+mV+qLuGST3aFdpBo1NLPRnqleBScL9vbNvapNdN5e+9kARXc+dKXNFQHt+Kkvn
	Gf8cizdILE83JPjaGORdNf5WLa7gvLL9JBwjFr+Ecp81cf37zH8igN3TzdGW3NaZNcfqBAI1vNQ/R
	gMi71RMSPRrz83qQf3rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlq7T-000859-KE; Fri, 12 Jul 2019 07:37:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlq7Q-00084a-1F; Fri, 12 Jul 2019 07:37:25 +0000
X-UUID: 4abe028e1b5c48ada68dd88742bb93bb-20190711
X-UUID: 4abe028e1b5c48ada68dd88742bb93bb-20190711
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <houlong.wei@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 895729803; Thu, 11 Jul 2019 23:37:17 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 00:37:15 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 12 Jul 2019 15:37:12 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 12 Jul 2019 15:37:12 +0800
Message-ID: <1562917032.29653.7.camel@mhfsdcap03>
Subject: Re: [PATCH] media: platform: mtk-mdp: mtk_mdp_core: Add
 of_node_put() before goto
From: houlong wei <houlong.wei@mediatek.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Date: Fri, 12 Jul 2019 15:37:12 +0800
In-Reply-To: <20190709172454.13648-1-nishkadg.linux@gmail.com>
References: <20190709172454.13648-1-nishkadg.linux@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 79F4A719342E98B201861EFA9EC14351327E4D4119A09EDE5AA191DCE970379F2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_003724_075840_23699D5C 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew-CT Chen =?UTF-8?Q?=28=E9=99=B3=E6=99=BA=E8=BF=AA=29?=
 <Andrew-CT.Chen@mediatek.com>,
 Minghsiu Tsai =?UTF-8?Q?=28=E8=94=A1=E6=98=8E=E4=BF=AE=29?=
 <Minghsiu.Tsai@mediatek.com>, houlong.wei@mediatek.com,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-07-10 at 01:24 +0800, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node puts the previous node, but in
> the case of a goto from the middle of the loop, there is no put, thus
> causing a memory leak. Hence add an of_node_put before the goto in two
> places.
> Issue found with Coccinelle.
> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> index fc9faec85edb..d0a3f06ad83d 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> @@ -145,13 +145,16 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>  		comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
>  		if (!comp) {
>  			ret = -ENOMEM;
> +			of_node_put(node);
>  			goto err_comp;
>  		}
>  		mdp->comp[comp_id] = comp;
>  
>  		ret = mtk_mdp_comp_init(dev, node, comp, comp_id);
> -		if (ret)
> +		if (ret) {
> +			of_node_put(node);
>  			goto err_comp;
> +		}
>  	}
>  
>  	mdp->job_wq = create_singlethread_workqueue(MTK_MDP_MODULE_NAME);

Thanks Nishka for fixing the bug.

Acked-by: Houlong Wei <houlong.wei@mediatek.com>


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
