Supplier.create!([
  {name: "supplier2", email: "supplier@supplys.com", phone_number: "3456789098"},
  {name: "supplier3", email: "s3@suppliers.com", phone_number: "234232324"},
  {name: "supplier1", email: "supplier1@suppliers.com", phone_number: "2344432323"}
])
Product.create!([
  {name: "on_cloudsurfer6", price: "149.0", image_url: "https://images.ctfassets.net/od02wyo8cgm5/0qJBaV8DB670ZuGQs776P/35e2b84b9e7cc759a426b8c620be9376/cloudsurfer_6-fw21-eucalyptus_citron-m-g1.png?w=500&h=500&fl=progressive&q=61&bg=rgb:f7f7f7&fm=jpg", description: "Training shoe comfort meets racing-flat speed. This sixth-generation road shoe is the ultimate ride for 5k to half marathon.", inventory: nil, supplier_id: 2},
  {name: "on_cloudstatus", price: "165.0", image_url: "https://images.ctfassets.net/od02wyo8cgm5/1G8iYG3NZFlrBEjKjosALZ/49b52061bef11f6a533f17d1e46b0981/cloudstratus_2-fw21-lake_flare-m-g1.png?w=500&h=500&fl=progressive&q=61&bg=rgb:f7f7f7&fm=jpg", description: "Double CloudTec®, double your run. The performance shoe for maximum cushioning on road runs – from 5k to a marathon.", inventory: nil, supplier_id: 2},
  {name: "test", price: "169.0", image_url: "https://images.ctfassets.net/od02wyo8cgm5/1G8iYG3NZFlrBEjKjosALZ/49b52061bef11f6a533f17d1e46b0981/cloudstratus_2-fw21-lake_flare-m-g1.png?w=500&h=500&fl=progressive&q=61&bg=rgb:f7f7f7&fm=jpg", description: "test test test test", inventory: nil, supplier_id: 3},
  {name: "test2", price: "169.0", image_url: "https://images.ctfassets.net/od02wyo8cgm5/1G8iYG3NZFlrBEjKjosALZ/49b52061bef11f6a533f17d1e46b0981/cloudstratus_2-fw21-lake_flare-m-g1.png?w=500&h=500&fl=progressive&q=61&bg=rgb:f7f7f7&fm=jpg", description: "test teeeeeesssssstttt", inventory: nil, supplier_id: 3},
  {name: "on_cloudflow", price: "139.0", image_url: "https://images.ctfassets.net/od02wyo8cgm5/7HQVWLVGrmKdjaxwKyLE1T/cf08faedff55048f43a4af4ed5fdbca2/cloudflow_3-fw21-rust_eclipse-m-g1.png?w=500&h=500&fl=progressive&q=61&bg=rgb:f7f7f7&fm=jpg", description: "Light, fast and fully cushioned. Take on training and racing in complete comfort.", inventory: nil, supplier_id: 1},
  {name: "on_cloud", price: "129.0", image_url: "https://images.ctfassets.net/od02wyo8cgm5/6mLHhPkYkIMZrO8ct7HauF/541b2ed65e4fd7909d8e55ba86af0df4/cloud_2-fw19-black_white-m-g1.png?w=500&h=500&fl=progressive&q=61&bg=rgb:f7f7f7&fm=jpg", description: "The shoe loved by millions worldwide. Made to perform all day, every day for active people on the go – wherever they go.", inventory: nil, supplier_id: 1}
])
