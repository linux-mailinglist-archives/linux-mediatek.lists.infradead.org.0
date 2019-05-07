Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E851613B
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 May 2019 11:41:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acVlF46t9dchM37I7F9dAjzSMksdHdFZXE1NQjs+UjM=; b=Sq3jGpAlHjZAC+
	7LqnVMoS4KAVOgwyrolMTKA0t6NRFjY9+X07Jix1kWTaItmzYESr755nmbW+JIDslKN1XsDH0q3eg
	MlltorUxwVCsclX2ZtNOGOoYHhdkUZ3OmkFCUkDXtXI2sIPLbwtT1erhXO9dOs5165Auj+Hx9yypk
	G/q73yuMQMlM0oeuge1vi7GCjUqiqQq6Okk6aaiHkUnfU6YvWTQh++ZWT4Z/vo74dwd9n+w00FyyK
	aaFUPs1DhLMjTtNWFtAN1WP/oBvudEMfMtIqPh4DB+OrH3JVIwx9XPfCR+ICJEIjR6UGG7F4VOQHB
	dlEVKfOR/v2M/ZPOlyMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNwb2-00013D-O5; Tue, 07 May 2019 09:41:12 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNwas-0000uq-Rz; Tue, 07 May 2019 09:41:04 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x479Xgg4180908;
 Tue, 7 May 2019 09:40:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=w+of231rH4tdBnhJ6seY4uuggvk1XXnKvBxVZPYMxtU=;
 b=uSCKrbdy+TidPcFl6JYZJf2E2Kuqzr73QTRYjS1ZdV7gvdpsQ5w8zf+1IEsStweOQ95e
 85vlEyUUzNqmJ1lyXHUV0v+2f3sE006J0lf+qAYkLFmd34hEW9T5kQx3zmMwh/xxB7K1
 05uV25pFILivg81tjcYEKHvpn7sDLUvET2dbDIXU/Sxk6uYfeeayaxAuTuZl+96o3IBV
 qOx8cGPDVEyGreujUUU1EZdsFqjqAGVE3AjGX/XXotil5ZIq1QQAguv1+e4kNPPWLj4G
 RGJTWW7VBGUVdyRfU1J+1JcownG+aPLoi+73EkHVOiXLwpUFs4jPFtEXr8koEgykS6Ze nQ== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2s94b0ky0p-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2019 09:40:33 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x479e37F049914;
 Tue, 7 May 2019 09:40:33 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 2sagytu6rq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 May 2019 09:40:33 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x479eLQl022615;
 Tue, 7 May 2019 09:40:22 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 07 May 2019 02:40:21 -0700
Date: Tue, 7 May 2019 12:40:10 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>
Subject: Re: [RFC PATCH v4 0/1] Re-license MTK NAND driver
Message-ID: <20190507094010.GU2239@kadam>
References: <20190507092020.1917-1-xiaolei.li@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507092020.1917-1-xiaolei.li@mediatek.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=909
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905070063
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=952 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905070063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_024103_036911_4C839567 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: daniel.thompson@linaro.org, ryder.lee@mediatek.com, arnd@arndb.de,
 srv_heupstream@mediatek.com, yamada.masahiro@socionext.com, richard@nod.at,
 miquel.raynal@bootlin.com, gustavo@embeddedor.com,
 jorge.ramirez-ortiz@linaro.org, yingjoe.chen@mediatek.com,
 boris.brezillon@collabora.com, linux-mtd@lists.infradead.org,
 weiyongjun1@huawei.com, yellowriver2010@hotmail.com, rafal@milecki.pl,
 linux-mediatek@lists.infradead.org, peterpandong@micron.com,
 rogercc.lin@mediatek.com, matthias.bgg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fine by me.

Acked-by: Dan Carpenter <dan.carpenter@oracle.com>

regards,
dan carpenter


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
