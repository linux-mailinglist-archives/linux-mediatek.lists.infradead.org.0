Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC4A1122F5
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Dec 2019 07:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Il/0luCsjSoDFRPor/OJ47CxduULDbr35H+BB18FW2w=; b=Tm+j3yPFhMcuXx
	D5Oym+MyT32geJHVjHuPAkkX/SOP//kLcXIEwV+Rkp5OcvAsALT9H+BCqJINbmddqyN7akSoba63Q
	YVE5VgN7csG4P5HnnUVhcwAJ03uDrrFnaAN83W3k459itHQw72vx+k13vvHmUJLAB+zt3LG+E1Y4m
	nsyWLjUZnarbUiGaWL1UrW338vQNHKYhtyk7Y4QleVI7y17Q9fQW+IJzNreKv0L/rX/UXO+aLV8Ga
	umbCJMP6uZM+A0g90SEsKbOpqIJPgh8Ec2PkNBxio3psxK7o/ipBwz/x63Li4u1P+8Lg3tE1/nPP4
	z83/Bpo8z52h0YyiJQ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icOHb-0000KR-7V; Wed, 04 Dec 2019 06:37:07 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icOHY-0000Jt-0c; Wed, 04 Dec 2019 06:37:05 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB46YkGL057001;
 Wed, 4 Dec 2019 06:36:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=yG0uO4UflwgTcea/waIQnEHCSa54PpQUZzE3UTh8gjU=;
 b=awAy7H72frQh/Ubir0MQ7Yg/Djd/bP6Cb2Q6IDZ0aC0a223v4OrGitrQBXKjxQBCxT66
 7Yik4vWDyAmhq6OTdUz8Oh9ZwH03WuoiQc/GGsZeibbCs8xFFH8DC22+e33YYXUj/O8L
 7bY/X1QQC4Hrxyva6Y+plLT5dWA/7CHto0Ju3rpsq9s1dsLfOpIuQe02JY98f0HBrm0G
 qXYt7/sR2zK6IPzmLy+7Hiyb0u+ArW7UPoTLz76SijKWdvD1fS8PrZZOkYDtt8WavggA
 5zR/84qjlzzUFs0B+bgV2hJzbjRIGWBatb3etxzSH0T1IuATsJsGdiNdDFbwatUFT4s5 ww== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2wkh2rc7m6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Dec 2019 06:36:46 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xB46TClM062802;
 Wed, 4 Dec 2019 06:36:46 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3030.oracle.com with ESMTP id 2wp17csvwu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 04 Dec 2019 06:36:46 +0000
Received: from abhmp0010.oracle.com (abhmp0010.oracle.com [141.146.116.16])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xB46ahDX004121;
 Wed, 4 Dec 2019 06:36:44 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 04 Dec 2019 06:36:42 +0000
Date: Wed, 4 Dec 2019 09:35:28 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mao Wenan <maowenan@huawei.com>
Subject: Re: [PATCH -next] rtc: mt6397: drop free_irq of devm_xx allocated irq
Message-ID: <20191204063444.GF1765@kadam>
References: <20191204020209.10363-1-maowenan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204020209.10363-1-maowenan@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9460
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-1912040046
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9460
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-1912040047
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_223704_141290_47AB3FCB 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, sean.wang@mediatek.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 10:02:09AM +0800, Mao Wenan wrote:
> rtc->irq is requested by devm_request_threaded_irq,
> and request_threaded_irq. IRQs requested with this
> function will be automatically freed on driver detach.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Mao Wenan <maowenan@huawei.com>
> ---
>  drivers/rtc/rtc-mt6397.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index 5249fc99fd5f..d6a10111137a 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -293,7 +293,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	return 0;
>  
>  out_free_irq:
> -	free_irq(rtc->irq, rtc);
>  	return ret;

Please get rid of the error label as well.

regards,
dan carpenter


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
